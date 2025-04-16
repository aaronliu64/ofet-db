import numpy as np
import pandas as pd
from sklearn.ensemble import RandomForestRegressor
from sklearn.feature_selection import SelectPercentile, f_regression
from sklearn.model_selection import train_test_split
from sklearn.pipeline import make_pipeline, make_union
from tpot.builtins import StackingEstimator
from xgboost import XGBRegressor
from tpot.export_utils import set_param_recursive
from sklearn.preprocessing import FunctionTransformer
from copy import copy

# NOTE: Make sure that the outcome column is labeled 'target' in the data file
tpot_data = pd.read_csv('PATH/TO/DATA/FILE', sep='COLUMN_SEPARATOR', dtype=np.float64)
features = tpot_data.drop('target', axis=1)
training_features, testing_features, training_target, testing_target = \
            train_test_split(features, tpot_data['target'], random_state=42)

# Average CV score on the training set was: 0.8368584914775237
exported_pipeline = make_pipeline(
    make_union(
        make_pipeline(
            StackingEstimator(estimator=RandomForestRegressor(bootstrap=False, max_features=0.5, min_samples_leaf=18, min_samples_split=10, n_estimators=100)),
            SelectPercentile(score_func=f_regression, percentile=68)
        ),
        FunctionTransformer(copy)
    ),
    XGBRegressor(learning_rate=0.5, max_depth=8, min_child_weight=4, n_estimators=100, n_jobs=1, objective="reg:squarederror", subsample=0.25, verbosity=0)
)
# Fix random state for all the steps in exported pipeline
set_param_recursive(exported_pipeline.steps, 'random_state', 42)

exported_pipeline.fit(training_features, training_target)
results = exported_pipeline.predict(testing_features)

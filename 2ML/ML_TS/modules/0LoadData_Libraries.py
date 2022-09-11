# basic
import numpy as np
import pandas as pd
import importlib
# local
# import modules.eda
# plots
import plotly.express as px
import matplotlib.pyplot as plt
#
print('All libraries loaded!')

#### Load data
air_pollution = pd.read_csv('data/air_pollution.csv', parse_dates=['date'])
air_pollution.set_index('date', inplace=True)
#
print('air_pollution.csv loaded! \n\n')
print(air_pollution.head(2))

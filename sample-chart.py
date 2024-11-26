#!python3
import pandas as pd
import plotly.graph_objects as go
import plotly

df = pd.read_csv('https://raw.githubusercontent.com/plotly/datasets/master/2014_apple_stock.csv')

chart = go.Figure(go.Scatter(x = df['AAPL_x'], y = df['AAPL_y'],
                  name='Share Prices (in USD)'))

chart.update_layout(title=dict(text='Apple Share Prices over time (2014)'),
                   plot_bgcolor='rgb(230, 230,230)',
                   showlegend=True)


plotly.offline.plot(chart, filename='./output/chart.html')

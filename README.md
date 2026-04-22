# Tesi-MASARIN: Attacks on Credibility in Online Social Networks

## Overview
This repository contains the research materials and experiments for my thesis on **"Attacks on Credibility in Online Social Networks"**. The project investigates how credibility is attacked and undermined in online discourse, with a specific focus on Reddit communities.

## Repository Organization

### Root Files
- **`DeGroot_toy.m`** - MATLAB implementation of DeGroot's consensus dynamics model for network opinion formation
- **`SignedDeGroot_toy.m`** - Extended version incorporating signed networks (positive and negative relationships)
- **`README.md`** - Project documentation

### ClimateChangeSubreddit/
Main analysis folder containing experiments and data from the r/ClimateChange subreddit community:

#### Data Files
- **`climatechange-1.csv` through `climatechange-4.csv`** - Raw Reddit discussion datasets (segmented into multiple parts)
- **`climatechange-opinions.csv`** - Processed user opinions and sentiment data

#### Analysis Notebook
- **`DS2024-exp.ipynb`** - Jupyter notebook containing the complete experimental analysis, including data exploration, opinion dynamics simulation, and credibility attack patterns

#### Visualizations
- **`graph.png`** - Network graph visualization of user interactions
- **`sampled_subgraph_Q1.png`** & **`sampled_subgraph_clean_Q1.png`** - Subgraph visualizations with and without noise
- **`polarization-cc.png`** - Polarization metrics over time
- **`acrophily-cc.png`**, **`acrophily-matrix-cc.png`**, **`acrophily-time-cc.png`** - Acrophily (assortative mixing) analysis
- **`thresholds-cc.png`** - Opinion threshold dynamics

## Project Focus
The research examines how credibility attacks manifest in online social networks, using opinion dynamics models and real-world Reddit data to analyze polarization, information propagation, and network behavior.

## Technologies Used
- **Python** (Jupyter Notebooks for data analysis)
- **MATLAB** (Opinion dynamics modeling)
- Data analysis and network visualization

---
*Last updated: April 2026*
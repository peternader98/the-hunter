from rpy2.robjects.packages import importr
from rpy2 import robjects as ro
# import R's "base" package
base = importr('base')

# import R's "utils" package
utils = importr('utils')
pis = ro.r['pi']
#print(pis)
#pi = rpy2.robjects.R['pi']
f = open('r.R','r')
x = ro.r(f.read())
print(x)
#r_f = robjects.globalenv['f']


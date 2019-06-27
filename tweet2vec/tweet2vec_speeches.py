import os,glob
import subprocess

try:
  os.mkdir('../results')
except:
  pass
  
modelpath = "best_model/"


fs = list(glob.glob("/home/simi/projects/robot/speeches/*.txt"))
for i in range(len(fs)):
  f = fs[i]
  e = f.rindex('_')
  l = f[:e].rindex('_')
  name = f[e+1:-4]
  date = f[l+2:e-1].replace(', ', '_')
  print(name, date)

  
  try:
    os.mkdir('../results/' + name)
  except:
    pass
    
  resultdir = '../results/' + name + '/' + date
  
  try:
    os.mkdir(resultdir)
  except:
    pass
  
  cmd = "python encode_char.py " + '\"' + f + '\"' " " + modelpath + " " + resultdir
  print(cmd)
  subprocess.call(cmd, shell=True)

print("finished")
  
  


echo "creating env %1"
call conda  clean --all --yes
echo "done cleaning"
echo  "creating conda env %1"
call conda create -n %1 python=3.8
call conda activate %1

echo "-- pip --"
call conda install pip --yes

echo $(which pip)
echo $(conda  info | sed 2q)


echo "==ipython and jupyter=="
call conda install -y ipython jupyter

echo "== jupyterlab =="
call conda install -c conda-forge jupyterlab

echo $(which pip)
echo $(conda  info | sed 2q)
echo  "==done pip =="

echo "==scipy and scikit-lerarn=="
call conda install -y scipy  scikit-learn
echo "==pandas matplotlib numpy=="
call conda install  -y  pandas matplotlib numpy
echo "== nbconvert =="
call pip install nbconvert

echo "== plotnine =="
call pip install  plotnine

echo "== networkx =="
call pip install  networkx

echo "== networkx =="
call pip install  microprediction

call conda clean --all -y
echo "Done  $(date)"

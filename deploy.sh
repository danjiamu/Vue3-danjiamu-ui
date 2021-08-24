rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git branch -M master &&
git remote add origin git@github.com:danjiamu/Vue3-danjiamu-ui-deploy.git &&
git push -f -u origin master &&
cd -
echo https://danjiamu.github.io/Vue3-danjiamu-ui-deploy/index.html#/

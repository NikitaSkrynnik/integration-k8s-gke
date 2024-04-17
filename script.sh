git checkout main
git fetch main
git reset --hard main/main
git checkout -b automerge

sed -i '' '/automerge-otherwise/,$d' ./.github/workflows/automerge.yaml
sed -i '' '$ d' ./.github/workflows/automerge.yaml
sed -i '' -e 's/automerge-on-success/automerge/g' ./.github/workflows/automerge.yaml

git add .
git commit -sm "Rework Automerge workflow"
git push -u fork automerge
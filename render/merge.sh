cd ../content

echo "Producing the merged markdown file.."
markdown-pp index.mdpp -o ../render/index.md -e latexrender

cd -

echo "Copying single non-templated articles.."
cp ../content/Timer_Obscure_Behaviour.md . --verbose

echo "Copying image assets.."
cp ../content/imgs .vuepress/public/ -r --verbose

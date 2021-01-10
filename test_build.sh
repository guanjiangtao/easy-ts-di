echo '删除旧的打包文件'
rm -rf ./build
echo '执行打包！'
npm run build
sleep 2
echo '复制文件'
cp package.json ~/code/simple-di/build/package.json
sleep 2
cp README.md ~/code/simple-di/build/README.md
echo '删除旧依赖'
sleep 2
rm -rf ~/code/test-di/node_modules/easy-ts-di/
echo '更新到测试目录'
cp -R ~/code/simple-di/build/ ~/code/test-di/node_modules/easy-ts-di/

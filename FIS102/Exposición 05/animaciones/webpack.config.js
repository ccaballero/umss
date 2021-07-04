const {resolve}=require('path'),
    {CleanWebpackPlugin}=require('clean-webpack-plugin'),
    MiniCssExtractPlugin=require('mini-css-extract-plugin'),
    HtmlWebpackPlugin=require('html-webpack-plugin');

module.exports={
    mode:process.env.NODE_ENV==='production'?'production':'development',
    target:'web',
    output:{
        path:resolve(__dirname,'dist'),
        assetModuleFilename:'images/[hash][ext][query]'
    },
    devtool:'source-map',
    devServer:{
        contentBase:'./dist',
        hot:true
    },
    module:{
        rules:[{
            test:/\.jsx?$/,
            exclude:/node_modules/,
            use:{
                loader:'babel-loader'
            }
        },{
            test:/\.(png|jpe?g|svg)$/,
            type:'asset/resource'
        },{
            test:/\.css$/,
            use:[
                {
                    loader:MiniCssExtractPlugin.loader,
                    options:{
                        publicPath: ''
                    }
                },
                'css-loader'
            ]
        }]
    },
    plugins:[
        new CleanWebpackPlugin(),
        new MiniCssExtractPlugin(),
        new HtmlWebpackPlugin({
            template:'./src/index.html'
        })
    ],
    resolve:{
        extensions:['.js','.jsx']
    }
};

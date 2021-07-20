const {resolve}=require('path'),
    {CleanWebpackPlugin}=require('clean-webpack-plugin'),
    HtmlWebpackPlugin=require('html-webpack-plugin'),
    MiniCssExtractPlugin=require('mini-css-extract-plugin'),
    OptimizeCssAssetsPlugin=require('optimize-css-assets-webpack-plugin'),
    TerserPlugin=require('terser-webpack-plugin');

module.exports={
    entry:'./src/js/index.js',
    mode:'development',
    output:{
        path:resolve(__dirname,'dist'),
        filename:'index.js'
    },
    devServer:{
        open:true
    },
   plugins:[
        new CleanWebpackPlugin(),
        new MiniCssExtractPlugin(),
        new HtmlWebpackPlugin({
            filename:'index.html',
            template:'src/index.html'
        })
    ],
    module:{
        rules:[{
            test:/\.js$/,
            exclude:/node_modules/,
            use:{
                loader:'babel-loader',
                options:{
                    presets:['@babel/preset-env']
                }
            }
        },{
            test:/\.css$/,
            use:[
                MiniCssExtractPlugin.loader,
                'css-loader'
            ]
        },{
            test:/\.(svg|png|jpg)$/,
            use:[
                'url-loader'
            ]
        }]
    },
    optimization:{
        minimize:true,
        minimizer:[
            new TerserPlugin({
                extractComments:false
            }),
            new OptimizeCssAssetsPlugin()
        ]
    }
};


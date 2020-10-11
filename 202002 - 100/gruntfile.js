const path=require('path');

module.exports=(grunt)=>{
    require('time-grunt')(grunt);
    require('load-grunt-tasks')(grunt);

    grunt.initConfig({
        shell:{
            informe1:{
                command:(doc)=>{
                    return [
                        'latex -interaction=nonstopmode informe1'
                      , 'dvipdf informe1'
                    ].join(' && ');
                }
            }
        }
      , watch:{
            informe1:{
                files:[
                    'informe1.tex'
                ]
              , tasks:['shell:informe1']
            }
        }
    });

    grunt.event.on('watch',(action,filepath,target)=>{
        var c=path.parse(filepath);

        grunt.config('watch.informe1.tasks','shell:informe1:'+c.dir);
    });

    grunt.registerTask('serve',[
        'watch'
    ]);
};


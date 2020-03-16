function   write_param(obj)


file_in  = strcat(obj.Filedir,obj.property,obj.gamv_in_file)  ;
file_out = strcat(obj.Filedir,obj.property,obj.gamv_out_file) ;
file_par = strcat(obj.Filedir,obj.property,obj.gamv_par_file) ;

fid = fopen(file_par,'w');
fprintf(fid,'                   Parameters for GAMV\n') ;
fprintf(fid,'                  *********************\n');
fprintf(fid,'                                      \n');
fprintf(fid,'START OF PARAMETERS                   \n');
fprintf(fid,'%s                         -file with data\n',file_in);
fprintf(fid,'%d %3d %3d                 - columns for X, Y, Z coordinates\n',obj.xyz(1,:));
fprintf(fid,'%d %3d %3d                 -  number of variables,col numbers\n',obj.nvar_colnum(1,:));
fprintf(fid,'%2.3g %8.3g                -trimming limits\n',obj.triming_limits(1,:));
fprintf(fid,'%s                         -file for variogram output\n',file_out);
fprintf(fid,'%d                         -number of lags\n',obj.nlags(1));
fprintf(fid,'%d                         -lag separation distance\n',obj.dlags(1));
fprintf(fid,'%d                         -lag tolerance\n',obj.lagtol(1));
fprintf(fid,'%d                         -number of directions\n',obj.ndir(1));
fprintf(fid,'%d %3d %3d%3d %3d %3d      -azm,atol,bandh,dip,dtol,bandv)\n',obj.var_param(1,:));
fprintf(fid,'%d                        -standardize sills? (0=no, 1=yes)\n',obj.standard_sills(1));
fprintf(fid,'%d                        -number of variograms\n',obj.nvar(1));
fprintf(fid,'%d %3d %3d                -tail var., head var., variogram type\n',obj.var_type(1,:));


fclose(fid);

end
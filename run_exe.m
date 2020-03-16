function run_exe(obj)



      fp = what('@gamv') ;
      fp = fp.path       ;
gamv_bin = strcat(fp,'\','gamv.exe');

parfile = strcat(obj.Filedir,obj.gamv_par_file) ; 
file_out = strcat(obj.Filedir,obj.gamv_out_file) ;

 if exist(file_out)
         delete(file_out)  ; % delete previous file
 end
 
if ~exist (parfile)
    error("Parameter file does not exist on disk") ;
end

      [status,result]=system(sprintf('"%s" %s',gamv_bin,parfile));
      
      if ~exist(file_out)
          result
          error("Program did not run successfully")
      else
          disp("Gamv ran succesfullly")
          disp("---------------------")
      end
        

end
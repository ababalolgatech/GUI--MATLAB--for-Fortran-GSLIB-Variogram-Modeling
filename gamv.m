classdef gamv < handle
    
    
    properties
           xyz ;
           nvar_colnum ;
        triming_limits ;      
         nlags;  dlags ; lagtol;
         ndir;var_param;
         standard_sills;
         nvar; var_type;
         vert_nlag;
         vert_dlag;
       vert_lagtol;
         nlag_horz;
         dlag_horz;
       lagtol_horz;
      direction_flag ;
      % File
         property;
         gamv_par_file ;
         gamv_out_file ;
          gamv_in_file ;          
          Filedir      ;
          
     %  Data 
        data ;
        
    end
    
    methods
       
         obj = run_exe(obj,parfile) ;
		 obj = make_param(obj,dir) ;
         obj = write_param(obj, parfile) ;
         obj = write_data(obj, data,fp) ;
         obj = read_variogram(obj,ndir,nvariogram)
    end
    
end
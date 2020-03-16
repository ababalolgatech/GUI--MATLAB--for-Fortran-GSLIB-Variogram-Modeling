function make_param(obj)
% creates defaut parameters

if isempty(obj.direction_flag)
   obj.direction_flag  = "horizontal" ;
end



if strcmp(obj.direction_flag,"horizontal")

%      obj.gamv_in_file = file_in ;  % defined outside
              obj.xyz = [1 2 3];
      obj.nvar_colnum = [1 4 0];
    obj.triming_limits = [-1.0000e+21 1.0000e+21];
%      obj.gamv_out_file = file_out ;  defined outside in GUI
             obj.nlags = 10;
             obj.dlags = 600;
            obj.lagtol = 300;
              obj.ndir = 1;
         obj.var_param = [180 22.5000 1000 0 0 2];
    obj.standard_sills = 1;
              obj.nvar = 1;
          obj.var_type = [1 1 1];
         obj.vert_nlag = 10;
         obj.vert_dlag = 0;
       obj.vert_lagtol = 4;
         obj.nlag_horz = 10;
         obj.dlag_horz = 600;
       obj.lagtol_horz = 300;       
else    
%       obj.gamv_in_file = file_in;   % defined out in GUI
               obj.xyz = [1 2 3];
       obj.nvar_colnum = [1 4 0];
    obj.triming_limits = [-1.0000e+21 1.0000e+21];
%      obj.gamv_out_file = file_out;  % defined outside in GUI
             obj.nlags = 50;
             obj.dlags = 4;
            obj.lagtol = 4;
              obj.ndir = 1;
         obj.var_param = [0 180 100 90 22.5000 2];
    obj.standard_sills = 1;
              obj.nvar = 1;
          obj.var_type = [1 1 1];      
end


end
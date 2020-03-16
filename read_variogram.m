function [obj] = read_variogram(obj,ndir,nvariogram)
% [dat,hdr] = read_variogram(filename,ndir,nvariogram)
%    dat = [ndir nvariograms]

if nargin < 2
          ndir = 1 ;
    nvariogram = 1;
end


file_out = strcat(obj.Filedir,obj.property,obj.gamv_out_file) ;
     fid = fopen(file_out,'r');
 

tline =  fgetl(fid);
 data = []; 
try 
while (~isempty(tline) )
    tline = fgetl(fid);
    tline = regexprep(tline,'[^0-9\s+-.eE]','');
     data = [data; str2num(tline)];
end

catch 
    tline = -1  ;
    
end
fclose(fid);

[nr,nc] = size(data) ;

  dat = cell(ndir,nvariogram) ;
   ns = nr/(ndir*nvariogram)    ; 

  
for ii = 1: nvariogram
    k = 0 ;
     for i = 1:ndir
         dat{i,ii} = data(k*ns+(1:ns),:) ;
     end
end

obj.data = dat ;
end

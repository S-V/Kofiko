function fnGenerateDeployProjectFile(strProjectFile, stMainFile, strOutputFolder,strOutputFileName, strIntermediateFolder,acStrPaths,acstrFiles)

if ~exist(strOutputFolder,'dir')
    mkdir(strOutputFolder);
end
if ~exist(strIntermediateFolder,'dir')
    mkdir(strIntermediateFolder);
end


hFileID = fopen(strProjectFile,'w+');
% fprintf(hFileID,'<?xml version="1.0" encoding="UTF-8"?>\r\n');
% fprintf(hFileID,'<project>\r\n');
% fprintf(hFileID,'  <!--DeployedProject.prj-->\r\n');
% fprintf(hFileID,'  <MATLABPath>\r\n');
% for iFolderIter=1:length(acStrPaths)
%     fprintf(hFileID,'    <Directory>%s</Directory>\r\n');\r\n',acStrPaths{iFolderIter});
% end;
% fprintf(hFileID,'  </MATLABPath>\r\n');
% fprintf(hFileID,'  <MCCProperties>\r\n');
% fprintf(hFileID,'    <output>%s</output>\r\n',strOutputFileName);
% fprintf(hFileID,'    <wrapper>\r\n');
% fprintf(hFileID,'      <type>main</type>\r\n');
% fprintf(hFileID,'    </wrapper>\r\n');
% fprintf(hFileID,'    <intermediate_dir>%s</intermediate_dir>\r\n',strIntermediateFolder(1:end-1));
% fprintf(hFileID,'    <output_dir>%s</output_dir>\r\n',strOutputFolder);
% fprintf(hFileID,'    <link>exe</link>\r\n');
% fprintf(hFileID,'    <MCR_runtime_options/>\r\n');
% fprintf(hFileID,'    <generate_code_only>false</generate_code_only>\r\n');
% fprintf(hFileID,'    <verbose>true</verbose>\r\n');
% fprintf(hFileID,'    <options_file/>\r\n');
% fprintf(hFileID,'    <debug>false</debug>\r\n');
% fprintf(hFileID,'    <toolboxes_on_path shortcut="all"/>\r\n');
% fprintf(hFileID,'    <warning shortcut="default">\r\n');
% fprintf(hFileID,'      <warn name="specified_file_mismatch">enable</warn>\r\n');
% fprintf(hFileID,'      <warn name="repeated_file">enable</warn>\r\n');
% fprintf(hFileID,'      <warn name="switch_ignored">enable</warn>\r\n');
% fprintf(hFileID,'      <warn name="missing_lib_sentinel">enable</warn>\r\n');
% fprintf(hFileID,'      <warn name="demo_license">enable</warn>\r\n');
% fprintf(hFileID,'    </warning>\r\n');
% fprintf(hFileID,'  </MCCProperties>\r\n');
% fprintf(hFileID,'  <file_info>\r\n');
% fprintf(hFileID,'    <category name="Main function">\r\n');
% fprintf(hFileID,'      <!--Do not modify the value of the name attribute, unless it is a class name.-->\r\n');
% fprintf(hFileID,'      <file>%s</file>\r\n',stMainFile);
% fprintf(hFileID,'    </category>\r\n');
% fprintf(hFileID,'    <category name="Other files">\r\n');
% fprintf(hFileID,'      <!--Do not modify the value of the name attribute, unless it is a class name.-->\r\n');
% for iFileIter=1:length(acstrFiles)
%     fprintf(hFileID,'      <file>%s</file>\r\n',acstrFiles{iFileIter});
% end;
% fprintf(hFileID,'    </category>\r\n');
% fprintf(hFileID,'    <category name="C/C++ files">\r\n');
% fprintf(hFileID,'      <!--Do not modify the value of the name attribute, unless it is a class name.-->\r\n');
% fprintf(hFileID,'    </category>\r\n');
% fprintf(hFileID,'  </file_info>\r\n');
% fprintf(hFileID,'  <packaging>\r\n');
% fprintf(hFileID,'    <name>DistributedDeploy_pkg</name>\r\n');
% fprintf(hFileID,'    <mcr include="false"/>\r\n');
% fprintf(hFileID,'    <additional_files/>\r\n');
% fprintf(hFileID,'  </packaging>\r\n');
% fprintf(hFileID,'</project>\r\n');
% fclose(hFileID);




fprintf(hFileID,'<?xml version="1.0" encoding="utf-8"?>\r\n');
fprintf(hFileID,'\r\n');  
fprintf(hFileID,'<project><!--DeployedProject.prj-->\r\n');
fprintf(hFileID,'   <MCCProperties>\r\n');
fprintf(hFileID,'    <output>%s</output>\r\n',strOutputFileName);
fprintf(hFileID,'      <wrapper>\r\n');
fprintf(hFileID,'         <type>main</type>\r\n');
fprintf(hFileID,'         <component_name>Worker</component_name>\r\n');
fprintf(hFileID,'         <default_class>Main function</default_class>\r\n');
fprintf(hFileID,'      </wrapper>\r\n');
fprintf(hFileID,'    <intermediate_dir>%s</intermediate_dir>\r\n',strIntermediateFolder(1:end-1));
fprintf(hFileID,'    <output_dir>%s</output_dir>\r\n',strOutputFolder);
fprintf(hFileID,'      <link>exe</link>\r\n');
fprintf(hFileID,'      <MCR_runtime_options/>\r\n');
fprintf(hFileID,'      <generate_code_only>false</generate_code_only>\r\n');
fprintf(hFileID,'      <verbose>true</verbose>\r\n');
fprintf(hFileID,'      <create_CTF>true</create_CTF>\r\n');
fprintf(hFileID,'      <options_file/>\r\n');
fprintf(hFileID,'      <debug>false</debug>\r\n');
fprintf(hFileID,'      <toolboxes_on_path shortcut="custom">\r\n');
fprintf(hFileID,'         <toolbox>bioinfo</toolbox>\r\n');
fprintf(hFileID,'         <toolbox>curvefit</toolbox>\r\n');
fprintf(hFileID,'         <toolbox>images</toolbox>\r\n');
fprintf(hFileID,'         <toolbox>optim</toolbox>\r\n');
fprintf(hFileID,'         <toolbox>pde</toolbox>\r\n');
fprintf(hFileID,'         <toolbox>signal</toolbox>\r\n');
fprintf(hFileID,'         <toolbox>splines</toolbox>\r\n');
fprintf(hFileID,'         <toolbox>stats</toolbox>\r\n');
fprintf(hFileID,'      </toolboxes_on_path>\r\n');
fprintf(hFileID,'      <warning shortcut="default">\r\n');
fprintf(hFileID,'         <warn name="specified_file_mismatch">enable</warn>\r\n');
fprintf(hFileID,'         <warn name="repeated_file">enable</warn>\r\n');
fprintf(hFileID,'         <warn name="switch_ignored">enable</warn>\r\n');
fprintf(hFileID,'         <warn name="missing_lib_sentinel">enable</warn>\r\n');
fprintf(hFileID,'         <warn name="demo_license">enable</warn>\r\n');
fprintf(hFileID,'      </warning>\r\n');
fprintf(hFileID,'   </MCCProperties>\r\n');
fprintf(hFileID,'   <file_info>\r\n');
fprintf(hFileID,'      <category name="Main function">\r\n');
fprintf(hFileID,'         <file>%s</file>\r\n',stMainFile);
fprintf(hFileID,'      </category>\r\n');
fprintf(hFileID,'      <category name="Other files"><!--Do not modify the value of the name attribute, unless it is a class name.-->\r\n');
 for iFileIter=1:length(acstrFiles)
     fprintf(hFileID,'      <file>%s</file>\r\n',acstrFiles{iFileIter});
 end;
fprintf(hFileID,'\r\n');
fprintf(hFileID,'      </category>\r\n');
fprintf(hFileID,'      <category name="C/C++ files"><!--Do not modify the value of the name attribute, unless it is a class name.--></category>\r\n');
fprintf(hFileID,'   </file_info>\r\n');
fprintf(hFileID,'   <packaging>\r\n');
fprintf(hFileID,'      <name>DeployedProject_pkg</name>\r\n');
fprintf(hFileID,'      <additional_files/>\r\n');
fprintf(hFileID,'   </packaging>\r\n');
fprintf(hFileID,'   <MATLABPath>\r\n');
 for iFolderIter=1:length(acStrPaths)
     fprintf(hFileID,'    <Directory>%s</Directory>\r\n',acStrPaths{iFolderIter});
 end;

      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\general</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\ops</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\lang</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\elmat</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\randfun</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\elfun</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\specfun</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\matfun</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\datafun</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\polyfun</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\funfun</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\sparfun</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\scribe</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\graph2d</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\graph3d</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\specgraph</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\graphics</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\uitools</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\strfun</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\imagesci</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\iofun</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\audiovideo</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\timefun</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\datatypes</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\verctrl</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\codetools</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\helptools</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\winfun</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\winfun\\NET</Directory>\r\\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\demos</Directory>\r\\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\timeseries</Directory>\r\\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\hds</Directory>\r\\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\guide</Directory>\r\\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\matlab\\plottools</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\local</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\shared\\controllib</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\shared\\dastudio</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\bioinfo\\bioinfo</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\bioinfo\\biolearning</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\bioinfo\\microarray</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\bioinfo\\mass_spec</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\bioinfo\\proteins</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\bioinfo\\biomatrices</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\bioinfo\\biodemos</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\bioinfo\\graphtheory</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\compiler</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\shared\\slcontrollib</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\curvefit\\curvefit</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\curvefit\\cftoolgui</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\curvefit\\sftoolgui</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\shared\\optimlib</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\images\\colorspaces</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\images\\images</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\images\\imdemos</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\images\\imuitools</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\images\\iptformats</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\images\\iptutils</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\shared\\imageslib</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\imaq\\imaq</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\shared\\imaqlib</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\imaq\\imaqdemos</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\optim\\optim</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\optim\\optimdemos</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\pde</Directory>\r\n');      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\splines</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\stats</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\symbolic\\symbolic</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\symbolic\\symbolicdemos</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\systemtest\\systemtest</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\systemtest\\systemtestdemos</Directory>\r\n');
      fprintf(hFileID,'<Directory>$(MATLABROOT)\\toolbox\\systemtest\\viewer</Directory>\r\n');

fprintf(hFileID,'   </MATLABPath>\r\n');
fprintf(hFileID,'</project>\r\n');
fclose(hFileID);
% mexMe: Used to run the mex compilation command - save having to type it all in lots of times

%selection = [1 2 3 4 5];
selection = [2];

for i = 1 : length(selection)
	switch selection(i)
		
	case 1 % DAQ_Drivers_sFcn.c
		disp(['Mexing file DAQ_Drivers_sFcn.c ...']);
		mex -I'c:\Program Files\National Instruments\NI-DAQ\include' DAQ_Drivers_sFcn.c ...
		'c:\Program Files\National Instruments\NI-DAQ\Lib\nidaq32.lib' ...
			'c:\Program Files\National Instruments\NI-DAQ\Lib\nidex32.lib';
		
	case 2 % DAQ_Drivers_Read_sFcn.c
		disp(['Mexing file DAQ_Drivers_Read_sFcn.c ...']);
		mex -I'c:\Program Files\National Instruments\NI-DAQ\include' DAQ_Drivers_Read_sFcn.c ...
		'c:\Program Files\National Instruments\NI-DAQ\Lib\nidaq32.lib' ...
			'c:\Program Files\National Instruments\NI-DAQ\Lib\nidex32.lib';
		
	case 3 % DAQ_Drivers_Write_sFcn.c
		disp(['Mexing file DAQ_Drivers_Write_sFcn.c ...']);
		mex -I'c:\Program Files\National Instruments\NI-DAQ\include' DAQ_Drivers_Write_sFcn.c ...
		'c:\Program Files\National Instruments\NI-DAQ\Lib\nidaq32.lib' ...
			'c:\Program Files\National Instruments\NI-DAQ\Lib\nidex32.lib';
		
	case 4 % DAQ_Drivers_DIG_sFcn.c
		disp(['Mexing file DAQ_Drivers_DIG_sFcn.c ...']);
		mex -I'c:\Program Files\National Instruments\NI-DAQ\include' DAQ_Drivers_DIG_sFcn.c ...
		'c:\Program Files\National Instruments\NI-DAQ\Lib\nidaq32.lib' ...
			'c:\Program Files\National Instruments\NI-DAQ\Lib\nidex32.lib';
		
	case 5 % DAQ1200_Test_sFcn.c
		disp(['Mexing file DAQ1200_Test_sFcn.c ...']);
		mex DAQ1200_Test_sFcn.c ...
		'c:\Program Files\National Instruments\NI-DAQ\Lib\nidaq32.lib' ...
			'c:\Program Files\National Instruments\NI-DAQ\Lib\nidex32.lib' ...
			-I'c:\Program Files\National Instruments\NI-DAQ\include';
		
	otherwise
		disp(['Warning (', mfilename, '): Unknown selection ', num2str(selection(i))]);
		
	end
	
	disp(['mex Complete.']); disp([' ']);
end

disp(['done!']);

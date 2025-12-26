$begin 'Profile'
	$begin 'ProfileGroup'
		MajorVer=2025
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '12/26/2025 11:38:56')
			I(1, 'Host', 'DESKTOP-SA1P11L')
			I(1, 'Processor', '12')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'Icepak 2025.2.0')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:01:00')
			I(1, 'ComEngine Memory', '89.7 M')
		$end 'TotalInfo'
		GroupOptions=8
		TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Executing From\', \'C:\\\\Program Files\\\\ANSYS Inc\\\\ANSYS Student\\\\v252\\\\AnsysEM\\\\ICEPAKCOMENGINE.exe\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='HPC'
			$begin 'StartInfo'
				I(1, 'Type', 'Manual')
				I(1, 'Distribution Types', 'Variations, Solver, Mesher')
				I(1, 'MPI Vendor', 'Intel')
				I(1, 'MPI Version', '2021')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(0, ' ')
			$end 'TotalInfo'
			GroupOptions=0
			TaskDataOptions(Memory=8)
			ProfileItem('Machine', 0, 0, 0, 0, 0, 'I(3, 1, \'Name\', \'DESKTOP-SA1P11L\', 2, \'Tasks\', 1, false, 2, \'Cores\', 4, false)', false, true)
		$end 'ProfileGroup'
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(3, 1, \'Level\', \'Perform full validations\', 1, \'Elapsed Time\', \'00:00:00\', 2, \'Memory\', 88176, true)', false, true)
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Meshing Process'
			$begin 'StartInfo'
				I(1, 'Time', '12/26/2025 11:38:56')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:01:00')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Global', 0, 0, 0, 0, 63356, 'I(4, 2, \'Nodes\', 40859, false, 2, \'Faces\', 19266, false, 2, \'Cells\', 33710, false, 0, \'Override min. gap - (4.431e-05, 4.431e-05, 1.000e-06)\')', true, true)
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Failed to launch mesher\')', false, true)
			ProfileFootnote('I(3, 2, \'Total Nodes\', 40859, false, 2, \'Total Faces\', 19266, false, 2, \'Total Cells\', 33710, false)', 0)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		ProfileFootnote('I(2, 1, \'Stop Time\', \'12/26/2025 11:39:56\', 1, \'Status\', \'Error\')', 2)
	$end 'ProfileGroup'
$end 'Profile'

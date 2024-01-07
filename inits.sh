#!/bin/bash
select process in start_and_control_daemons encapsulate_IPC_and_ntw_sockets sync_points_during_boot_up implement_device-based_activation mount_units_control_points_in_the_file_system automount_units_for_on_demand_mounting_of_file_system encapsulate_memory_swap_partitions_or_files_of_the_OS activate_other_systems_when_file_system_changes update_grub
do
	case $process in
		start_and_control_daemons )
			for command in init
			do
				$command 1

			done ;;

		encapsulate_IPC_and_ntw_sockets )
			for command in init
			do
				$command 2

			done ;;

		sync_points_during_boot_up )
			for command in init
			do
				$command 3

			done ;;

		implement_device-based_activation )
			for command in init
			do
				$command 4

			done ;;

		mount_units_control_points_in_the_file_system )
			for command in init
			do
				$command 5

			done ;;

		automount_units_for_on_demand_mounting_of_file_system )
			for command in init
			do
				$command 6

			done ;;

		update_grub )
			update-grub ;;


		* )
			echo "N0thing S3l3ct3d!!" ;;

	esac

done

#~Scripted by:~ P4p4m1dn1ght

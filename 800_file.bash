#!/bin/bash
nb_total_commits=4;
nb_total_files=800;
files_per_commit=200;
file_path_10KB="/var/GIT_WORK/GIT_REPOS/my_10KB_file";
nb_commit=1; 
while [ $nb_commit -le $nb_total_commits ];
do mkdir commit_dir_$nb_commit;
cd commit_dir_$nb_commit;
nb_file=1;
while [ $nb_file -le $files_per_commit ];
do cp $file_path_10KB c_$nb_commit"_f_"$nb_file;
nb_file=$((nb_file+1))
done
git add .*
git commit -m "commiting "$files_per_commit" to"$commit_dir_$nb_commit;
git push
cd -
nb_commit=$((nb_commit+1))
done



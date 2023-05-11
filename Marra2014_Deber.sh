

cd CSB-master/unix/sandbox


ls -lh ../data/Marra2014_data.fasta


cp ../data/Marra2014_data.fasta my_file.fasta


grep isogroup00036 my_file.fasta | wc -l


cat my_file.fasta | tr -s ' ' ',' > my_file.tmp
mv my_file.tmp my_file.fasta

grep -o 'isogroup[[:digit:]]\+' my_file.fasta | sort | uniq | wc -l


grep '>' my_file.fasta | cut -d ',' -f 1,3 | sort -t '=' -k 2 -n -r | head -n 1

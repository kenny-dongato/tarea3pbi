

cut -f 1 data/Gesquiere2011_data.csv | grep -w 3 | grep -c 3
cut -f 1 data/Gesquiere2011_data.csv | grep -w 27 | grep -c 27

vector=`tail -n +2 data/Gesquiere2011_data.csv | cut -f 1 | uniq `

for i in $vector
do
conteo=`bash Gesquiere2011_contar.sh data/Gesquiere2011_data.csv $i`
echo "ID:" $i "conteo:" $conteo
done


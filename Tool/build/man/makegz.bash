for f in ./*.man; 
do 
    echo "gzip -c $f > $f.gz"; 
    gzip -c $f > $f.gz; 
done

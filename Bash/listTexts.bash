array() {
    printf '{"texts":[\n'
    i=1
    s=$(ls ../Texts | wc -l)
    for name in `ls ../Texts`
    do  
        if [ $i -eq $s ]; then
            printf '        {"id":"%s","name":"%s"}\n' "$i" "$name"
            continue
        fi
        printf '        {"id":"%s","name":"%s"},\n' "$i" "$name"
        i=$[$i +1]
    done 
    printf '    ]\n}'
}

array >> ../Data/TextList.json
#!/bin/bash
$filetype

echo -n "파일/디렉토리 이름 입력: "
read x
if [ -e $x ]
then
        echo "$x는 $(file -b $x) 입니다."
else
        echo "$x는 존재하지 않습니다."
fi

longest.sh
#!/bin/bash
# longest-word : find longest string in a file

while [ -n "$1" ]; do
        if [ -r "$1" ]; then
                max_word=
                max_len=0
                for i in $(strings $1); do
                        len=$(echo $i | wc -c)
                        if (( len > max_len)); then
                                max_len=$len
                                max_word=$i
                        fi
                done
                echo "$1: '$max_word' ($max_len characters)"
        fi
        shift
done

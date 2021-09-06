#!/bin/bash
which jq >/dev/null
if [ $? -gt 0 ]; then
	echo "Necesitas instalar JQ"
	exit 1
fi

alpha='[
{"hex":["2826"],"unicode":"⠦","chr":"\""},
{"hex":["283C","281A"],"unicode":"⠼⠚","chr":"0"},
{"hex":["283C","2801"],"unicode":"⠼⠁","chr":"1"},
{"hex":["283C","2803"],"unicode":"⠼⠃","chr":"2"},
{"hex":["283C","2809"],"unicode":"⠼⠉","chr":"3"},
{"hex":["283C","2819"],"unicode":"⠼⠙","chr":"4"},
{"hex":["283C","2811"],"unicode":"⠼⠑","chr":"5"},
{"hex":["283C","280B"],"unicode":"⠼⠋","chr":"6"},
{"hex":["283C","281B"],"unicode":"⠼⠛","chr":"7"},
{"hex":["283C","2813"],"unicode":"⠼⠓","chr":"8"},
{"hex":["283C","280A"],"unicode":"⠼⠊","chr":"9"},
{"hex":["2800"],"unicode":"⠀","chr":" ","note":"space"},
{"hex":["2801"],"unicode":"⠁","chr":"a"},
{"hex":["2828","2801"],"unicode":"⠨⠁","chr":"A"},
{"hex":["2802"],"unicode":"⠂","chr":","},
{"hex":["2803"],"unicode":"⠃","chr":"b"},
{"hex":["2828","2803"],"unicode":"⠨⠃","chr":"B"},
{"hex":["2804"],"unicode":"⠄","chr":"."},
{"hex":["2805"],"unicode":"⠅","chr":"k"},
{"hex":["2828","2805"],"unicode":"⠨⠅","chr":"K"},
{"hex":["2806"],"unicode":"⠆","chr":";"},
{"hex":["2807"],"unicode":"⠇","chr":"l"},
{"hex":["2828","2807"],"unicode":"⠨⠇","chr":"L"},
{"hex":["2808"],"unicode":"⠈","chr":""},
{"hex":["2809"],"unicode":"⠉","chr":"c"},
{"hex":["2828","2809"],"unicode":"⠨⠉","chr":"C"},
{"hex":["280A"],"unicode":"⠊","chr":"i"},
{"hex":["2828","280A"],"unicode":"⠨⠊","chr":"I"},
{"hex":["280B"],"unicode":"⠋","chr":"f"},
{"hex":["2828","280B"],"unicode":"⠨⠋","chr":"F"},
{"hex":["280C"],"unicode":"⠌","chr":"í"},
{"hex":["2828","280C"],"unicode":"⠨⠌","chr":"Í"},
{"hex":["280D"],"unicode":"⠍","chr":"m"},
{"hex":["2828","280D"],"unicode":"⠨⠍","chr":"M"},
{"hex":["280E"],"unicode":"⠎","chr":"s"},
{"hex":["2828","280E"],"unicode":"⠨⠎","chr":"S"},
{"hex":["280F"],"unicode":"⠏","chr":"p"},
{"hex":["2828","280F"],"unicode":"⠨⠏","chr":"P"},
{"hex":["2810"],"unicode":"⠐","chr":"","note":"undefined"},
{"hex":["2811"],"unicode":"⠑","chr":"e"},
{"hex":["2828","2811"],"unicode":"⠨⠑","chr":"E"},
{"hex":["2812"],"unicode":"⠒","chr":":"},
{"hex":["2813"],"unicode":"⠓","chr":"h"},
{"hex":["2828","2813"],"unicode":"⠨⠓","chr":"H"},
{"hex":["2814"],"unicode":"⠔","chr":"*"},
{"hex":["2815"],"unicode":"⠕","chr":"o"},
{"hex":["2828","2815"],"unicode":"⠨⠕","chr":"O"},
{"hex":["2816"],"unicode":"⠖","chr":"!"},
{"hex":["2817"],"unicode":"⠗","chr":"r"},
{"hex":["2828","2817"],"unicode":"⠨⠗","chr":"R"},
{"hex":["2818"],"unicode":"⠘","chr":"","note":"undefined"},
{"hex":["2819"],"unicode":"⠙","chr":"d"},
{"hex":["2828","2819"],"unicode":"⠨⠙","chr":"D"},
{"hex":["281A"],"unicode":"⠚","chr":"j"},
{"hex":["2828","281A"],"unicode":"⠨⠚","chr":"J"},
{"hex":["281B"],"unicode":"⠛","chr":"g"},
{"hex":["2828","281B"],"unicode":"⠨⠛","chr":"G"},
{"hex":["281C"],"unicode":"⠜","chr":")"},
{"hex":["281D"],"unicode":"⠝","chr":"n"},
{"hex":["2828","281D"],"unicode":"⠨⠝","chr":"N"},
{"hex":["281E"],"unicode":"⠞","chr":"t"},
{"hex":["2828","281E"],"unicode":"⠨⠞","chr":"T"},
{"hex":["281F"],"unicode":"⠟","chr":"q"},
{"hex":["2828","281F"],"unicode":"⠨⠟","chr":"Q"},
{"hex":["2820"],"unicode":"⠠","chr":"","note":"undefined"},
{"hex":["2821"],"unicode":"⠡","chr":"","note":"undefined"},
{"hex":["2822"],"unicode":"⠢","chr":"?"},
{"hex":["2823"],"unicode":"⠣","chr":"("},
{"hex":["2824"],"unicode":"⠤","chr":"-"},
{"hex":["2825"],"unicode":"⠥","chr":"u"},
{"hex":["2828","2825"],"unicode":"⠨⠥","chr":"U"},
{"hex":["2827"],"unicode":"⠧","chr":"v"},
{"hex":["2828","2827"],"unicode":"⠨⠧","chr":"V"},
{"hex":["2828"],"unicode":"⠨","chr":"^","note":"uppercase mark"},
{"hex":["2829"],"unicode":"⠩","chr":"","note":"undefined"},
{"hex":["282A"],"unicode":"⠪","chr":"","note":"undefined"},
{"hex":["282B"],"unicode":"⠫","chr":"","note":"undefined"},
{"hex":["282C"],"unicode":"⠬","chr":"ó"},
{"hex":["2828","282C"],"unicode":"⠨⠬","chr":"Ó"},
{"hex":["282D"],"unicode":"⠭","chr":"x"},
{"hex":["2828","282D"],"unicode":"⠨⠭","chr":"X"},
{"hex":["282E"],"unicode":"⠮","chr":"é"},
{"hex":["2828","282E"],"unicode":"⠨⠮","chr":"É"},
{"hex":["282F"],"unicode":"⠯","chr":"&"},
{"hex":["2830"],"unicode":"⠰","chr":"","note":"undefined"},
{"hex":["2831"],"unicode":"⠱","chr":"","note":"undefined"},
{"hex":["2832"],"unicode":"⠲","chr":"","note":"undefined"},
{"hex":["2833"],"unicode":"⠳","chr":"ü"},
{"hex":["2828","2833"],"unicode":"⠨⠳","chr":"Ü"},
{"hex":["2834"],"unicode":"⠴","chr":"","note":"undefined"},
{"hex":["2835"],"unicode":"⠵","chr":"z"},
{"hex":["2828","2835"],"unicode":"⠨⠵","chr":"Z"},
{"hex":["2836"],"unicode":"⠶","chr":"","note":"undefined"},
{"hex":["2837"],"unicode":"⠷","chr":"á"},
{"hex":["2828","2837"],"unicode":"⠨⠷","chr":"Á"},
{"hex":["2838"],"unicode":"⠸","chr":"","note":"undefined"},
{"hex":["2839"],"unicode":"⠹","chr":"","note":"undefined"},
{"hex":["283A"],"unicode":"⠺","chr":"w"},
{"hex":["2828","283A"],"unicode":"⠨⠺","chr":"W"},
{"hex":["283B"],"unicode":"⠻","chr":"ñ"},
{"hex":["2828","283B"],"unicode":"⠨⠻","chr":"Ñ"},
{"hex":["283C"],"unicode":"⠼","chr":"#","note":"numeric mark"},
{"hex":["283D"],"unicode":"⠽","chr":"y"},
{"hex":["2828","283D"],"unicode":"⠨⠽","chr":"Y"},
{"hex":["283E"],"unicode":"⠾","chr":"ú"},
{"hex":["2828","283E"],"unicode":"⠨⠾","chr":"Ú"},
{"hex":["283F"],"unicode":"⠿","chr":"","note":"undefined"}
]'
function get_help() {
	cat <<EOF
Pasa texto a braille o lee caracteres braille
ejemplo:
./braile.sh --crear "Hola Juan Carlos"
./braile.sh --leer ⠨⠥⠝⠀⠛⠥⠎⠞⠕⠀⠉⠕⠝⠕⠉⠑⠗⠞⠑

EOF
}
while [ ! "$1" == "" ]; do
	[ "$1" == "--crear" ]  && DO="create" && shift && TEXTO="$1"
	[ "$1" == "--leer" ]   && DO="read"   && shift && TEXTO="$1"
	[ "$1" == "--encode" ] && DO="encode" && shift && TEXTO="$1"
	shift
done

if [ "$TEXTO" == "" ]; then
  get_help
  exit 1
fi

long=${#TEXTO}
mayuscula=0
numerico=0
for ((i=0;i<$long;i++)); do
	current=${TEXTO:i:1}
	if [ "$DO" == "create" ]; then
		tr=$(jq -Mr ".[]|select(.chr==\"${current}\").unicode" <<<$alpha)
	fi
	if [ "$DO" == "read" ]; then
		if [ "${current}" == "⠨" ]; then
			mayuscula=1
			tr=""
		elif [ "${current}" == "⠼" ]; then
			numerico=1
			tr=""
		else
			if [ "${mayuscula}" == "1" ]; then
				tr=$(jq -Mr ".[]|select(.unicode==\"⠨${current}\").chr" <<<$alpha)
				mayuscula=0
			elif [ "${numerico}" == "1" ]; then
				tr=$(jq -Mr ".[]|select(.unicode==\"⠼${current}\").chr" <<<$alpha)
				numerico=0
			else
				tr=$(jq -Mr ".[]|select(.unicode==\"${current}\").chr" <<<$alpha)
			fi
		fi
	fi
	if [ "$DO" == "encode" ]; then
		tr=$(jq -Mr ".[]|select(.chr==\"${current}\").hex|join(\" \")" <<<$alpha)
		tr="${tr} "
	fi
	echo -n "$tr"
done
echo

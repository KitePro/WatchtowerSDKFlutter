FLUTTER:=flutter
DART:=dart

.PHONY: format analyzee

format:
	${FLUTTER} pub run import_sorter:main
	${DART} format .
	echo "Formatted"

analyze:
	${FLUTTER} analyze

all: format	analyzee
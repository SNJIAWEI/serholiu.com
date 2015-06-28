all: css mincss run

LESSPATH = miniakio/static/style/

css:
	lessc $(LESSPATH)effector.less > $(LESSPATH)style.css

mincss:
	lessc $(LESSPATH)effector.less --clean-css="--s1 --advanced" > $(LESSPATH)style.min.css

run:
	python3.4 run.py

clean:
	-rm -f $(LESSPATH)style.min.css
	-rm -f $(LESSPATH)style.css
	-find . -name '*.py[co]' -exec rm -f {} ';'
	-find . -name '__pycache__' | xargs rm -rf {}
qmds = $(wildcard *.qmd)
mds = $(qmds:.qmd=.md)

.PHONY: all
all: $(mds)

%.md: %.qmd
	docker-compose exec quarto quarto render $<

.PHONY: clean
clean:
	rm -f $(mds)

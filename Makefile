CC      = gcc                              
CFLAGS  = -Wall -Werror -ansi -pedantic -std=c99          
CFLAGS += -g

all:testAnalyseur afficheVoisins graphe2visu

testAnalyseur:testAnalyseur.c graphe.c
	$(CC) $(CFLAGS) -o testAnalyseur testAnalyseur.c graphe.c

afficheVoisins:afficheVoisins.c graphe.c
	$(CC) $(CFLAGS) -o afficheVoisins afficheVoisins.c graphe.c

graphe2visu:graphe2visu.c graphe.c
	$(CC) $(CFLAGS) -o graphe2visu graphe2visu.c graphe.c

ps:test.dot test-no.dot
	dot -Tps test.dot -o test.ps
	dot -Tps test-no.dot -o test-no.ps

test:graphe2visu q4-no.grp
	./graphe2visu q4-no.grp testq4
	./graphe2visu q2.grp testq2

clean:
	rm -rf *.o *.ps *~ testAnalyseur afficheVoisins graphe2visu

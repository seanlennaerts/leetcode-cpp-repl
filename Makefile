CFLAGS := -g -std=c++17 -O1 -fsanitize=address
OUTDIR := build
OBJS := $(addprefix $(OUTDIR)/, test-main.o test-solution.o)

# link the two object files
$(OUTDIR)/test: $(OBJS)
	g++ $^ -o $@ $(CFLAGS)

# object files have order-only-prerequisite to make dir
# for more info: https://www.gnu.org/software/make/manual/html_node/Prerequisite-Types.html
$(OUTDIR)/test-main.o: test-main.cpp | $(OUTDIR)
	g++ -c $< -o $@ $(CFLAGS)

$(OUTDIR)/test-solution.o: test-solution.cpp solution.h | $(OUTDIR)
	g++ -c $< -o $@ $(CFLAGS)

$(OUTDIR):
	mkdir $(OUTDIR)

clean:
	rm -rf $(OUTDIR)
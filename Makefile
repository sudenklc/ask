.PHONY: all clean

all: action.plan.md

quality.md: codebase.txt
	./ask "Analyze the following code for code quality only. Focus on readability, structure, duplication, naming, error handling, and maintainability. Output 5-7 bullets in the format: problem -> fix." < codebase.txt > quality.md

perf.md: codebase.txt
	./ask "Analyze the following code for performance only. Focus on bottlenecks, inefficient database usage, connection handling, unnecessary work, and scalability. Output 5-7 bullets in the format: issue -> optimization." < codebase.txt > perf.md

security.md: codebase.txt
	./ask "Analyze the following code for security only. Focus on SQL injection, unsafe debug mode, input validation, configuration handling, authentication, and error exposure. Output 5-7 bullets in the format: risk -> mitigation." < codebase.txt > security.md

quality.sum.md: quality.md
	./ask "Summarize this code quality review into exactly 5 actionable bullets. Keep only high-signal issues." < quality.md > quality.sum.md

perf.sum.md: perf.md
	./ask "Summarize this performance review into exactly 5 actionable bullets. Keep only high-signal issues." < perf.md > perf.sum.md

security.sum.md: security.md
	./ask "Summarize this security review into exactly 5 actionable bullets. Keep only high-signal issues." < security.md > security.sum.md

concatenated.md: quality.sum.md perf.sum.md security.sum.md
	{ echo "## Code Quality"; cat quality.sum.md; echo ""; echo "## Performance"; cat perf.sum.md; echo ""; echo "## Security"; cat security.sum.md; } > concatenated.md

refined.md: concatenated.md
	./ask "Refine the following combined report. Keep the sections Code Quality, Performance, and Security. Remove duplicates and keep only high-signal engineering issues." < concatenated.md > refined.md

action.plan.md: refined.md
	./ask "Generate a final markdown report titled Engineering Action Plan. Create a concise prioritized action plan with no duplicate actions. Use a markdown table with columns: Priority, Action, Reason, Effort, Execution Order. Priorities must be High, Medium, or Low. Effort must be Small, Medium, or Large. Focus on the most important engineering fixes only. Base it only on the refined report." < refined.md > action.plan.md

clean:
	rm -f quality.md quality.sum.md perf.md perf.sum.md security.md security.sum.md concatenated.md refined.md action.plan.md

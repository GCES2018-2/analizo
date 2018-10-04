build:
	@echo "*********************************\n"
	@echo "Building Analizo environment!\n"
	@echo "*********************************\n"
	@docker build -t analizo .

run:
	@echo "*********************************\n"
	@echo "Running Analizo environment!\n"
	@echo "*********************************\n"
	@docker run -it --name analizo --volume $PWD:/home/analizo analizo bash

rm: 
	@echo "*********************************\n"
	@echo "Removing Analizo environment!\n"
	@echo "*********************************\n"
	@docker rm -f analizo

exec:
	@echo "*********************************\n"
	@echo "Entering Analizo environment!\n"
	@echo "*********************************\n"
	@docker start analizo
	@docker exec -it analizo bash

help:
	@echo "\n\t\t\t\tAnalizo"
	@echo "--->\tmake build - Builds environment for Analizo"
	@echo "--->\tmake run - Runs new environment for Analizo"
	@echo "--->\tmake exec - Executes previoulsy created environment for Analizo"
	@echo "--->\tmake rm - Removes the Avaleasy environment"
	@echo "--->\tmake help - Outputs this list\n"
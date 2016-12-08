.PHONY: clean All

All:
	@echo "----------Building project:[ space_invaders - Debug ]----------"
	@cd "space_invaders" && "$(MAKE)" -f  "space_invaders.mk" && "$(MAKE)" -f  "space_invaders.mk" PostBuild
clean:
	@echo "----------Cleaning project:[ space_invaders - Debug ]----------"
	@cd "space_invaders" && "$(MAKE)" -f  "space_invaders.mk" clean

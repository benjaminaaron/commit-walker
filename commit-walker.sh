# chmod +x commit-walker.sh
# On new branch: git reset --hard <commit-to-start-from>
#                stepcounter = 0
STEP=$(<stepcounter)
HASH=$(sed "${STEP}q;d" git.log)
echo $STEP: $HASH
git cherry-pick $HASH
NEXT_STEP=$((STEP + 1))
echo $NEXT_STEP > stepcounter

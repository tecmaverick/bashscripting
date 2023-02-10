if which ls; then
  echo "ls command exists"
else
  echo "ls command NOT found"
fi

if command -v ls; then
  echo "ls command exists"
else
  echo "ls command NOT found"
fi

#View the path\location of command
which commandName
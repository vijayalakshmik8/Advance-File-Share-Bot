if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/VJBots/Advance-File-Share-Bot /vijayalakshmik8/File-Sharing-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /vijayalakshmik8/File-Sharing-Bot
fi
cd /vijayalakshmik8/File-Sharing-Bot
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py

if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/sanithbimsara/My-k-drama-bot-source-code.git /My-k-drama-bot-source-code
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /My-k-drama-bot-source-code
fi
cd /My-k-drama-bot-source-code
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py

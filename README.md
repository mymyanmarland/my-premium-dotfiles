# Premium Developer Dotfiles 🚀

Professional Linux Terminal configurations for Full-Stack Developers and AI Engineers.

## ပါဝင်တဲ့အရာများ (Features)
- **.zshrc**: Terminal shell configuration (Optimized for performance)
- **.aliases**: အလွယ်တကူ သုံးလို့ရတဲ့ shortcuts များ (Git, Python, Web Dev, AI CLI)
- **starship.toml**: Terminal ကို လှလှပပ ဖြစ်စေမယ့် modern prompt configuration

## အသုံးပြုနည်း (Installation)

၁။ ဒီ Repo ကို Clone လုပ်ပါ:
```bash
git clone https://github.com/mymyanmarland/my-premium-dotfiles.git ~/dotfiles
```

၂။ Install script ကို run ပါ:
```bash
bash ~/dotfiles/install.sh
```

၃။ Terminal ကို Restart လုပ်ပါ သို့မဟုတ် အောက်ပါ command ကို ရိုက်ပါ:
```bash
source ~/.zshrc
```

## shortcuts များ (Aliases)

### 🤖 AI & OpenClaw
- `oc`: OpenClaw CLI
- `ocs`: OpenClaw status စစ်ရန်
- `ocl`: Logs များကြည့်ရန်
- `ocw`: AI Workspace ထဲသို့ တိုက်ရိုက်သွားရန်

### ⬢ Web Development
- `ni`: `npm install`
- `nd`: `npm run dev`
- `nb`: `npm run build`

### 🐍 Python
- `py`: `python3`
- `venv`: Virtual environment ဆောက်ရန်
- `activate`: Virtual environment အသုံးပြုရန်

### 🐙 Git
- `gs`: `git status`
- `gp`: `git push`
- `gc "message"`: `git commit -m "message"`

## နောက်ထပ် Shortcuts များ ထပ်တိုးနည်း (How to Customize)

ကိုယ်ပိုင် shortcut အသစ်တွေ ထပ်ထည့်ချင်ရင် အောက်ပါအတိုင်း လုပ်နိုင်ပါတယ်:

၁။ `~/.aliases` ဖိုင်ကို ဖွင့်ပါ:
```bash
nano ~/.aliases
```

၂။ ဖိုင်ရဲ့ အောက်ဆုံးမှာ alias အသစ်ကို ပုံစံအတိုင်း ထည့်ပါ:
```bash
alias နာမည်='command'
# ဥပမာ: alias hi='echo "Hello World"'
```

၃။ သိမ်းပြီးထွက်ပါ (Ctrl+O, Enter, Ctrl+X)။ ပြီးရင် terminal မှာ အောက်ပါအတိုင်း ရိုက်ပါ:
```bash
source ~/.aliases
```

Enjoy your professional terminal setup! ✨

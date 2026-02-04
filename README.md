# My Premium Dotfiles 🚀

ကိုကျော်မျိုးနိုင်အတွက် အထူးစီမံပေးထားတဲ့ Linux Terminal Dotfiles များ ဖြစ်ပါတယ်။

## ပါဝင်တဲ့အရာများ
- **.zshrc**: Terminal shell configuration
- **.aliases**: အလွယ်တကူ သုံးလို့ရတဲ့ shortcuts များ (Git, Python, OpenClaw)
- **starship.toml**: Terminal ကို လှလှပပ ဖြစ်စေမယ့် prompt configuration

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

## Shortcuts အချို့ (Aliases)
- `gs` -> `git status`
- `ga` -> `git add .`
- `gc "message"` -> `git commit -m "message"`
- `gp` -> `git push`
- `ll` -> `ls -lah` (ဖိုင်အားလုံးကို အသေးစိတ်ကြည့်ရန်)
- `cls` -> `clear`

Enjoy your new pro terminal! ✨

# 🚀 Premium Developer Dotfiles (Stuxnet Edition)

Professional Terminal configuration for Full-Stack Developers and AI Engineers. Optimized for **Zsh**, **Starship**, and **OpenClaw**.

## ✨ အဓိက လုပ်ဆောင်ချက်များ (Key Features)

- **Starship Prompt:** မြန်ဆန်ပြီး လှပတဲ့ ခေတ်မီ Terminal Prompt။
- **Custom Aliases:** Git, Python, Web Dev နဲ့ AI Tool တွေအတွက် အချိန်ကုန်သက်သာစေမယ့် Shortcut များ။
- **Zsh Optimized:** သမိုင်းကြောင်း (History) ရှာဖွေရလွယ်ကူခြင်းနှင့် Auto-completion များ ပါဝင်ခြင်း။
- **Universal Installer:** Codespace သို့မဟုတ် မည်သည့် Linux စနစ်မှာမဆို အလွယ်တကူ တပ်ဆင်နိုင်ခြင်း။

---

## 🛠 တပ်ဆင်အသုံးပြုနည်း (Installation)

### ၁။ Repo ကို Clone လုပ်ပါ
```bash
git clone https://github.com/mymyanmarland/my-premium-dotfiles.git ~/my-premium-dotfiles
```

### ၂။ Install Script ကို Run ပါ
```bash
cd ~/my-premium-dotfiles && bash install.sh
```

### ၃။ Shell ပြောင်းလဲပါ (အရေးကြီးသည်)
မိတ်ဆွေရဲ့ လက်ရှိ Shell က Bash ဖြစ်နေရင် Zsh ကို ပြောင်းပေးရပါမယ် -
```bash
zsh
```
ပြီးရင် environment ကို activate လုပ်ပါ -
```bash
source ~/.zshrc
```

---

## ⌨️ အသုံးဝင်သော Shortcuts များ (Aliases)

### 🐙 Git Commands
- `gs`: `git status` (လက်ရှိ အခြေအနေ ကြည့်ရန်)
- `ga`: `git add .` (ဖိုင်အားလုံးကို staging ထဲထည့်ရန်)
- `gc "message"`: `git commit -m` (မှတ်ချက်ရေးပြီး commit လုပ်ရန်)
- `gp`: `git push` (GitHub ပေါ်တင်ရန်)
- `gl`: `git log` (သမိုင်းကြောင်းကို ပုံဖော်ကြည့်ရန်)

### 🐍 Python & Data Science
- `py`: `python3`
- `pip`: `python3 -m pip`
- `venv`: Virtual Environment အသစ်ဆောက်ရန်
- `activate`: Virtual Environment ကို စတင်အသုံးပြုရန်
- `pyclean`: မလိုအပ်တဲ့ cache ဖိုင်တွေကို ရှင်းလင်းရန်

### ⬢ Web Development (NPM)
- `ni`: `npm install`
- `ns`: `npm start`
- `nd`: `npm run dev`
- `nb`: `npm run build`

### 🤖 AI Agent (OpenClaw)
- `oc`: OpenClaw CLI ကို ခေါ်သုံးရန်
- `ocs`: OpenClaw ရဲ့ လက်ရှိ အခြေအနေ (Status) ကို စစ်ရန်
- `ocl`: အလုပ်လုပ်ပုံ Logs များကို ကြည့်ရန်
- `ocr`: Gateway ကို Restart ချရန်
- `ocw`: AI Workspace ထဲသို့ တိုက်ရိုက်သွားရန်

---

## 🎨 ဒီဇိုင်းပိုင်း ပြင်ဆင်နည်း (Customization)

### Prompt ကို ပြင်ဆင်ရန်
Terminal ရဲ့ အသွင်အပြင်ကို ပြင်ချင်ရင် `starship.toml` ဖိုင်ကို ပြင်နိုင်ပါတယ်:
```bash
nano ~/my-premium-dotfiles/starship.toml
```

### Shortcut အသစ်များ ထည့်ရန်
မိတ်ဆွေကိုယ်ပိုင် shortcut တွေ ထည့်ချင်ရင် `.aliases` ဖိုင်မှာ သွားထည့်နိုင်ပါတယ်:
```bash
nano ~/my-premium-dotfiles/.aliases
# ပြင်ပြီးတိုင်း ဒါလေး ရိုက်ပေးပါ - source ~/.zshrc
```

---

## ❓ ပြဿနာဖြေရှင်းနည်း (Troubleshooting)

**မေး - Terminal မှာ ဘာမှမပြောင်းလဲသွားဘူး ဖြစ်နေတယ်?**
ဖြေ - မိတ်ဆွေက Bash shell ကို သုံးနေလို့ ဖြစ်နိုင်ပါတယ်။ `echo $SHELL` လို့ ရိုက်ကြည့်ပါ။ အကယ်၍ `/bin/zsh` မဟုတ်ရင် `zsh` လို့ ရိုက်ပြီး shell ပြောင်းပေးလိုက်ပါခင်ဗျာ။

---

**ဖန်တီးသူ:** [ကိုပိုင် (Pi)](https://github.com/sciencedailymyanmar)  
**ပိုင်ရှင်:** [Stuxnet](https://github.com/mymyanmarland)

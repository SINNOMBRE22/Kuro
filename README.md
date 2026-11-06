<div align="center">

<img src="banner.jpg" alt="Kuro" width="100%">

# 🐈‍⬛ Kuro クロ

**Bot de Telegram para grupos · by SinNombre**

Administración, descargas, anime y moderación automática.<br>
Rápido y ligero: hecho en C++ nativo.

</div>

---

## ✨ Qué hace

- 🛡 **Administra tu grupo:** expulsar, banear, silenciar, advertencias y limpieza.
- 👋 **Bienvenidas y despedidas** personalizables, con foto.
- 🔗 **Antilink:** borra enlaces de quien no es admin (o lo banea).
- 🤖 **Captcha:** verifica a los nuevos para frenar bots y spam.
- 📥 **Descargas:** YouTube, Spotify, TikTok, Instagram, Facebook y X.
- 🌸 **Anime:** info de anime, waifus y reacciones.
- 🎛 **Menú con botones** y panel `/config` para encender todo con un toque.

---

## 🚀 Instalación

En una VPS con **Ubuntu 20.04+ o Debian 11+**:

```bash
git clone https://github.com/SINNOMBRE22/Kuro.git
cd Kuro
bash install.sh
```

El instalador baja las dependencias, te pide tu **token** y tu **ID de Telegram**,
y deja a Kuro corriendo 24/7 (se reinicia sola si se cae).

```bash
journalctl -u kuro -f        # ver logs en vivo
systemctl restart kuro       # reiniciar
systemctl stop kuro          # detener
```

---

## 🤖 Antes de empezar (@BotFather)

1. `/newbot` → crea tu bot y copia el **token**.
2. `/setprivacy` → tu bot → **Disable** (para que lea los mensajes del grupo).
3. Agrega a Kuro a tu grupo y hazla **administradora** con permisos para
   eliminar mensajes, banear e invitar.

Tu ID de Telegram te lo da [@userinfobot](https://t.me/userinfobot).

---

## 📜 Comandos principales

Funcionan con `/`, `.`, `#` o `!` · `/menu` abre el menú con botones.

**Grupos:** `/kick` `/ban` `/mute` `/warn` `/limpiar` `/pin` `/promote` `/grupo abrir|cerrar`

**Seguridad:** `/activartodo` · `/antilink off|grupos|todos` · `/antilinkban on` · `/captcha on`

**Bienvenida:** `/setbienvenida` `/setfotobienvenida` `/despedida` `/reglas`

**Descargas:** `/play` `/ytmp4` `/spotify` `/tiktok` `/instagram` `/facebook`

**Anime:** `/anime` `/waifu` · reacciones como `/abrazar` `/pat`

**Herramientas:** `/s` (sticker) `/traducir` `/clima` `/id` `/info`

> Tip: puedes mandar los comandos de búsqueda sin texto. Ejemplo: escribe
> `/play` y Kuro te pregunta qué canción quieres.

---

## ❓ Problemas comunes

- **No responde en el grupo** → en @BotFather pon `/setprivacy` → Disable,
  y sácala y vuelve a meterla al grupo.
- **No borra enlaces ni limpia** → hazla admin con permiso de *eliminar mensajes*.
- **No descarga de YouTube** → vuelve a correr `bash install.sh`.

---

<div align="center">

Hecho con café ☕ por **SinNombre**

<i>Permitido usar el bot. Prohibido revender o redistribuir el binario.</i>

</div>

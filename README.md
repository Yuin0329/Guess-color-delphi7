
# GUESS_COLOR

A two-player color-guessing game written in **Delphi 7** using **Indy UDP** components (`TIdUDPClient` / `TIdUDPServer`). Two peer applications exchange color pairs over UDP and each tries to guess the other's secret combination.

## Structure

```
GUESS_COLOR/
├── UDPC/        # Peer A — listens on 4000, sends to 5000
├── UDPS/        # Peer B — listens on 5000, sends to 4000
└── GUESS_COLOR/ # Duplicate copy of UDPC / UDPS
```

## Ports

| App  | Listens (Server) | Sends to (Client)            |
| ---- | ---------------- | ---------------------------- |
| UDPC | `4000`           | `127.0.0.1:5000`             |
| UDPS | `5000`           | `127.0.0.1:4000`             |

Edit `TIdUDPClient.Host` in `Unit1.dfm` to play across machines.

## How to Play

1. Drag any of the 4 source colors (`Aqua`, `Yellow`, `Red`, `Teal`) onto your two "secret" circles.
2. Press **Send** — the pair is transmitted as `color1,color2` over UDP.
3. Drag your guess onto the answer circles.
4. Press **Guess** — a dialog reports how many of the two slots match.

## Build & Run

**Requirements:** Borland Delphi 7 with bundled Indy components.

- Run prebuilt binaries: launch `UDPC/Project1.exe` and `UDPS/Project1.exe`.
- Or open `Project1.dpr` in Delphi 7 and press **F9**.

> Each peer binds a fixed port, so only one instance per app per machine.

## Notes

- `*.~dpr` / `*.~pas` / `*.~dfm` files are Delphi auto-backups and can be deleted.
- Source strings use Big5 encoding; expect mojibake when opened as UTF-8.

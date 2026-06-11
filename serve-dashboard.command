#!/bin/bash
# ─────────────────────────────────────────────────────────────
# AI Business Architect · Publishing Dashboards — local server
# Double-click this file to start the dashboard on your computer.
# ─────────────────────────────────────────────────────────────
PORT=8088
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "$DIR" || exit 1

echo "──────────────────────────────────────────────"
echo "  AI Business Architect · Publishing Dashboards"
echo "──────────────────────────────────────────────"
echo "  Folder : $DIR"
echo "  URL    : http://localhost:$PORT/"
echo ""

# Free the port if a previous server is still running.
EXISTING=$(lsof -ti:$PORT 2>/dev/null)
if [ -n "$EXISTING" ]; then
  echo "  Port $PORT busy — restarting (killing PID $EXISTING)…"
  echo "$EXISTING" | xargs kill -9 2>/dev/null
  sleep 1
fi

# Open the browser shortly after the server boots.
( sleep 1.2; open "http://localhost:$PORT/" ) &

echo "  Server starting… (close this window or press Ctrl+C to stop)"
echo "──────────────────────────────────────────────"
echo ""

# Foreground server: closing the Terminal window stops it.
python3 -m http.server "$PORT" --directory "$DIR"

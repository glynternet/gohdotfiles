#!/usr/bin/env python3.7

import iterm2

async def main(connection):
    app = await iterm2.async_get_app(connection)
    window = app.current_terminal_window
    if window is None:
        print("No current window")
        return
    await window.async_create_tab()

    top_left = window.current_tab.current_session
    await quadrant(top_left, "top_left")

    bottom_left = await top_left.async_split_pane()
    await quadrant(bottom_left, "bottom_left")

    top_right = await top_left.async_split_pane(vertical=True)
    await quadrant(top_right, "top_right")

    bottom_right = await bottom_left.async_split_pane(vertical=True)
    await quadrant(bottom_right, "bottom_right")

async def quadrant(session, quandrant_key):
	await session.async_send_text("eval $(yq -r .%s $QUADRANTS)\n" % quandrant_key)

iterm2.run_until_complete(main)

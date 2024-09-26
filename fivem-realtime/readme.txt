Thanks for downloading :)
HiFiveM.com <3

# Real-Time Synchronization Script for FiveM

This FiveM resource synchronizes the in-game time with real-world time, ensuring a more immersive experience for players. The script includes both server-side and client-side logic to keep the in-game clock in sync with the real world.

## Features
- Synchronizes in-game time with real-world time.
- Includes functionality to start and stop the synchronization.
- Simple command to toggle synchronization (`/toggleTimeSync`).

## Installation

1. **Download and Extract the Resource**
   - Download the ZIP file and extract it into your `resources` folder on your FiveM server.

2. **Place the Resource in the Right Directory**
   - Move the extracted `realtime` folder to your FiveM server's `resources` directory:
     ```
     your-fivem-server/resources/realtime/
     ```

3. **Add to Server Configuration**
   - Open your server's `server.cfg` file and add the following line:
     ```
     ensure realtime
     ```

4. **Restart Your Server**
   - Restart your FiveM server to load the resource.

## Usage
- The script will automatically start syncing the real-time clock with the in-game time.
- You can toggle the synchronization on and off using the command.



## Files

- **server.lua**: Handles the server-side logic to retrieve the current real-world time and send it to the clients.
- **client.lua**: Manages the client-side synchronization and provides the ability to start or stop the sync.
- **fxmanifest.lua**: The resource manifest that defines the resource metadata and dependencies.

## Customization
- You can modify the `SetMillisecondsPerGameMinute` function in `client.lua` to change how the in-game time scales.
- The script can be extended or integrated with other server features to enhance gameplay.

## License
This script is free to use and modify. Contributions and improvements are welcome.

## Author
- YourName (Feel free to replace with your own information)

Enjoy!


fck tebex & encrypted shit.
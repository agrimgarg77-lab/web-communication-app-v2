const express = require('express');
const { Server } = require('socket.io');
const { createServer } = require('http');
const cors = require('cors');
ECHO is off.
const app = express();
const server = createServer(app);
const io = new Server(server, {
  cors: {
    origin: "*",
    methods: ["GET", "POST"]
  }
});
ECHO is off.
app.use(cors());
app.use(express.json());
app.use(express.static('public'));
ECHO is off.
// Store users
const users = {};
ECHO is off.
  console.log('User connected:', socket.id);
ECHO is off.
    socket.join(roomId);
    users[socket.id] = { username, roomId };
ECHO is off.
    socket.to(roomId).emit('user-connected', {
      userId: socket.id,
      username: username
    });
ECHO is off.
    socket.emit('users-in-room', roomUsers);
  });
ECHO is off.
    socket.to(data.roomId).emit('chat-message', data);
  });
ECHO is off.
    socket.to(data.roomId).emit('voice-message', data);
  });
ECHO is off.
    socket.to(data.roomId).emit('file-shared', data);
  });
ECHO is off.
    const user = users[socket.id];
    if (user) {
      socket.to(user.roomId).emit('user-disconnected', {
        userId: socket.id,
        username: user.username
      });
      delete users[socket.id];
    }
  });
});
ECHO is off.
// Health check
  res.json({ status: 'ok' });
});
ECHO is off.
// Export for Vercel
  app(req, res);
};
ECHO is off.
// For local testing
if (process.env.NODE_ENV !== 'production') {
  const PORT = process.env.PORT 
    console.log(`Server running on port ${PORT}`);
  });
}

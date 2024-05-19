const express = require("express");
const user = require("../models/user");

const authrouter = express.Router();

authrouter.post('/api/signup', async (req, res) => {
    try {
        const { name, email, profilepic } = req.body;
        //header as well but we use this
        let user = await user.findOne({ email });

        if (!user) {
            user = new user({
                email,
                profilepic,
                name,
            });
            user = await user.save();
        }

        res.status(200).json({user});

    } catch (e) {
        res.status(500).json({error:e.message});
    }
});

module.exports=authrouter;
function scr_playerreset() //scr_playerreset
{
    trace("playerreset")
    global.lap = false
    global.laps = 0
    global.secretfound = 0
    with (obj_music)
    {
        secret = false
        music = -4
        secretmusic = -4
    }
    instance_destroy(obj_combotitle)
    instance_destroy(obj_comboend)
    instance_destroy(obj_sandparticle)
    instance_destroy(obj_gravecorpse, false)
    with (obj_camera)
        alarm[4] = -1
    if (!global.levelreset)
    {
        instance_destroy(obj_deliverytimer)
        instance_destroy(obj_wartimer)
        with (obj_cutscene_handler)
            instance_destroy()
        with (obj_snowparticle)
            instance_destroy()
        with (obj_tv)
        {
            shownranka = false
            shownrankb = false
            shownrankc = false
            ds_list_clear(tvprompts_list)
            prompt = ""
            bubblespr = -4
            promptx = promptxstart
            if (!global.levelreset)
            {
                sprite_index = spr_tv_off
                tvsprite = spr_tv_idle
                state = states.normal
                tv_set_idle()
            }
        }
        with (obj_secretmanager)
        {
            ds_list_clear(secrettriggers)
            ds_list_clear(touchall)
            touchrequirement = -4
            init = false
        }
        ds_list_clear(global.baddieroom)
        ds_list_clear(global.saveroom)
        ds_list_clear(global.escaperoom)
        global.combodropped = false
        global.timeractive = false
        global.wave = 0
        global.maxwave = 0
        global.secretfound = 0
        global.hurtcounter = 0
        global.snickchallenge = false
        global.timeattack = false
        global.giantkey = false
        global.pizzadelivery = false
        global.failcutscene = false
        global.pizzasdelivered = 0
        global.spaceblockswitch = true
        global.fill = 500
        global.chunk = 5
        global.hasfarmer = array_create(3, false)
        global.checkpoint_room = -4
        global.checkpoint_door = "A"
        global.noisejetpack = false
        global.hp = 0
        global.kungfu = false
        global.graffiticount = 0
        global.gerome = false
        global.stylelock = false
        global.ammorefill = 0
        global.ammoalt = 1
        global.mort = false
        global.style = 0
        global.spaceblockswitch = true
        global.stylethreshold = 0
        global.baddiespeed = 1
        global.bullet = 3
        global.fuel = 3
        global.horse = false
        global.golfhit = 0
        global.railspeed = global.maxrailspeed
        global.temperature = 0
        if (room != freezer_1)
            global.use_temperature = false
        global.heatmeter_count = 0
        global.monsterspeed = 0
        global.timedgate = false
        global.timedgatetimer = false
        global.timedgatetime = 0
        global.taseconds = 0
        global.taminutes = 0
        global.key_inv = false
        global.pepanimatronic = false
        global.shroomfollow = false
        global.cheesefollow = false
        global.tomatofollow = false
        global.sausagefollow = false
        global.pineapplefollow = false
        global.keyget = false
        global.collect = 0
        global.collectN = 0
        global.ammo = 0
        global.treasure = false
        global.combo = 0
        global.combotime = 0
        global.heattime = 0
        global.pizzacoin = 0
        global.toppintotal = 1
        global.hit = 0
        global.playerhealth = 100
        global.panic = false
        with (obj_stylebar)
            sprite = spr_mild
        with (obj_music)
            arena = false
        if instance_exists(obj_endlevelfade)
            instance_destroy(obj_endlevelfade)
        if instance_exists(obj_monstertrackingrooms)
            instance_destroy(obj_monstertrackingrooms)
        instance_destroy(obj_trapghost)
        instance_destroy(obj_comboend)
        instance_destroy(obj_farmer1follow)
        instance_destroy(obj_farmer2follow)
        instance_destroy(obj_farmer3follow)
        if instance_exists(obj_snickexe)
            instance_destroy(obj_snickexe)
        if instance_exists(obj_pizzaface)
            instance_destroy(obj_pizzaface)
        if instance_exists(obj_pizzashield)
            instance_destroy(obj_pizzashield)
        instance_destroy(obj_pepanimatronicfollow)
        if instance_exists(obj_coopflag)
            instance_destroy(obj_coopflag)
        if instance_exists(obj_cooppointer)
            instance_destroy(obj_cooppointer)
        instance_destroy(obj_coopplayerfollow)
        if instance_exists(obj_toppinwarrior)
            instance_destroy(obj_toppinwarrior)
        if instance_exists(obj_timesup)
            instance_destroy(obj_timesup)
    }
    with (obj_player)
    {
        ratpowerup = -4
        scale_xs = 1
        scale_ys = 1
        obj_camera.targetgolf = -4
        ds_list_clear(global.baddietomb)
        obj_player.supercharge = 0
        obj_player.supercharged = false
        pistol = false
        if instance_exists(obj_gnome_checklist)
        {
            var destroy = true
            with (obj_player)
            {
                if (state == states.gameover || state == states.timesup)
                    destroy = false
            }
            if destroy
                instance_destroy(obj_gnome_checklist)
        }
        obj_timeattack.stop = false
        obj_player1.spotlight = true
        obj_player2.x = -1000
        obj_player2.y = 500
        global.SAGEshotgunsnicknumber = 0
        obj_music.fadeoff = 0
        audio_stop_all()
        global.seconds = 59
        global.minutes = 1
        obj_player1.state = states.comingoutdoor
        obj_player2.state = states.comingoutdoor
        obj_player1.visible = true
        obj_player2.visible = true
        ds_list_clear(global.saveroom)
        ds_list_clear(global.escaperoom)
        ds_list_clear(global.baddieroom)
        with (obj_player)
        {
            ds_list_clear(hitlist)
            image_blend = make_colour_hsv(0, 0, 255)
            boxxed = false
            boxxeddash = false
            supercharged = false
            pizzapepper = 0
            pizzashield = false
            c = 0
            heavy = false
            image_index = 0
            sprite_index = spr_walkfront
            alarm[0] = -1
            alarm[1] = -1
            alarm[3] = -1
            alarm[4] = -1
            alarm[5] = -1
            alarm[6] = -1
            alarm[7] = -1
            alarm[8] = -1
            alarm[9] = -1
            alarm[10] = -1
            grav = 0.5
            hsp = 0
            vsp = 0
            xscale = 1
            yscale = 1
            parry = false
            parry_inst = -4
            parry_count = 0
            is_firing = false
            pogospeed = 6
            pogochargeactive = false
            pogocharge = 100
            x = backtohubstartx
            y = backtohubstarty
            roomstartx = x
            roomstarty = y
            backupweapon = false
            shotgunAnim = false
            box = false
            steppy = false
            movespeedmax = 5
            jumpstop = false
            start_running = true
            obj_camera.ded = false
            visible = true
            turn = false
            jumpAnim = true
            dashAnim = true
            landAnim = false
            machslideAnim = false
            moveAnim = true
            stopAnim = true
            crouchslideAnim = true
            crouchAnim = true
            machhitAnim = false
            stompAnim = false
            inv_frames = false
            turning = false
            hurtbounce = 0
            hurted = false
            autodash = false
            mach2 = 0
            input_buffer_jump = 8
            input_buffer_secondjump = 8
            input_buffer_highjump = 8
            flash = false
            in_water = false
            key_particles = false
            barrel = false
            bounce = false
            a = 0
            idle = 0
            attacking = false
            slamming = false
            superslam = 0
            machpunchAnim = false
            punch = false
            machfreefall = 0
            shoot = false
            instakillmove = false
            windingAnim = 0
            facestompAnim = false
            ladderbuffer = 0
            chainsaw = 50
            toomuchalarm1 = 0
            toomuchalarm2 = 0
            dashdust = false
            throwforce = 0
            hurtsound = false
            idleanim = 0
            momemtum = false
            cutscene = false
            grabbing = false
            dir = xscale
            goingdownslope = false
            goingupslope = false
            fallinganimation = 0
            bombpeptimer = 100
            slapbuffer = 0
            slaphand = 1
            suplexmove = false
            suplexhavetomash = 0
            timeuntilhpback = 300
            anger = 0
            angry = false
            skateboarding = false
            brick = false
            isgustavo = false
            controllableSjump = false
        }
    }
    with (obj_player2)
    {
        pizzashield = false
        image_blend = make_colour_hsv(0, 0, 255)
        supercharged = false
        pizzapepper = 0
        c = 0
        heavy = false
        image_index = 0
        sprite_index = spr_walkfront
        alarm[0] = -1
        alarm[1] = -1
        alarm[3] = -1
        alarm[4] = -1
        alarm[5] = -1
        alarm[6] = -1
        alarm[7] = -1
        alarm[8] = -1
        alarm[9] = -1
        alarm[10] = -1
        grav = 0.5
        hsp = 0
        vsp = 0
        global.playerhealth = 100
        xscale = 1
        yscale = 1
        pogospeed = 6
        pogochargeactive = false
        pogocharge = 100
        parry = false
        parry_inst = -4
        parry_count = 0
        is_firing = false
        x = backtohubstartx
        y = backtohubstarty
        backupweapon = false
        shotgunAnim = false
        box = false
        steppy = false
        movespeedmax = 5
        jumpstop = false
        start_running = true
        obj_camera.ded = false
        visible = true
        global.panic = false
        turn = false
        jumpAnim = true
        dashAnim = true
        landAnim = false
        machslideAnim = false
        moveAnim = true
        stopAnim = true
        crouchslideAnim = true
        crouchAnim = true
        machhitAnim = false
        stompAnim = false
        inv_frames = false
        turning = false
        hurtbounce = 0
        hurted = false
        autodash = false
        mach2 = 0
        input_buffer_jump = 8
        input_buffer_secondjump = 8
        input_buffer_highjump = 8
        flash = false
        global.key_inv = false
        global.shroomfollow = false
        global.cheesefollow = false
        global.tomatofollow = false
        global.sausagefollow = false
        global.pineapplefollow = false
        global.keyget = false
        global.collect = 0
        global.collectN = 0
        global.ammo = 0
        global.treasure = false
        global.savedcombo = 0
        global.comboscore = 0
        global.combo = 0
        global.combotime = 0
        global.heattime = 0
        global.pizzacoin = 0
        global.toppintotal = 1
        global.hit = 0
        in_water = false
        key_particles = false
        barrel = false
        bounce = false
        a = 0
        idle = 0
        attacking = false
        slamming = false
        superslam = 0
        machpunchAnim = false
        punch = false
        machfreefall = 0
        shoot = false
        instakillmove = false
        windingAnim = 0
        facestompAnim = false
        ladderbuffer = 0
        chainsaw = 50
        toomuchalarm1 = 0
        toomuchalarm2 = 0
        dashdust = false
        throwforce = 0
        hurtsound = false
        idleanim = 0
        momemtum = false
        cutscene = false
        grabbing = false
        dir = xscale
        goingdownslope = false
        goingupslope = false
        fallinganimation = 0
        bombpeptimer = 100
        slapbuffer = 0
        slaphand = 1
        suplexmove = false
        suplexhavetomash = 0
        timeuntilhpback = 300
        anger = 0
        angry = false
    }
    instance_destroy(obj_followcharacter)
    instance_destroy(obj_shotgunback)
}


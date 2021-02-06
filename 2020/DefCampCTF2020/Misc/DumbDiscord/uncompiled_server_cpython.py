# uncompyle6 version 3.7.4
# Python bytecode 3.6 (3379)
# Decompiled from: Python 3.7.7 (default, Mar 10 2020, 13:18:53) 
# [GCC 9.2.1 20200306]
# Embedded file name: server.py
# Compiled at: 2020-12-01 21:30:35
# Size of source mod 2**32: 1909 bytes
from discord.ext import commands
import discord, json
from discord.utils import get

def obfuscate(byt):
    mask = b'ctf{tryharderdontstring}'
    lmask = len(mask)
    return bytes(c ^ mask[(i % lmask)] for i, c in enumerate(byt))


def test(s):
    data = obfuscate(s.encode())
    return data


intents = discord.Intents.default()
intents.members = True
cfg = open('config.json', 'r')
tmpconfig = cfg.read()
cfg.close()
config = json.loads(tmpconfig)
token = config[test('\x17\x1b\r\x1e\x1a').decode()]
client = commands.Bot(command_prefix='/')

@client.event
async def on_ready():
    print('Connected to bot: {}'.format(client.user.name))
    print('Bot ID: {}'.format(client.user.id))


@client.command()
async def getflag(ctx):
    await ctx.send(test('\x13\x1b\x08\x1c').decode())


@client.event
async def on_message(message):
    await client.process_commands(message)
    if test('B\x04\x0f\x15\x13').decode() in message.content.lower():
        await message.channel.send(test('\x13\x1b\x08\x1c').decode())
    if test('L\x13\x03\x0f\x12\x1e\x18\x0f').decode() in message.content.lower():
        if message.author.id == 783473293554352141:
            role = discord.utils.get((message.author.guild.roles), name=(test('\x07\x17\x12\x1dFBKXO\x11\x1d\x07\x17\x16\n\n\x01]\x06\x1d').decode()))
            member = discord.utils.get((message.author.guild.members), id=(message.author.id))
            if role in member.roles:
                await message.channel.send(test(config[test('\x05\x18\x07\x1c').decode()]))
    if test('L\x1c\x03\x17\x04').decode() in message.content.lower():
        await message.channel.send(test('7\x06\x1f[\x1c\x13\x0b\x0c\x04\x00E').decode())
    if '/s基ay' in message.content.lower():
        await message.channel.send(message.content.replace('/s基ay', '').replace(test('L\x13\x03\x0f\x12\x1e\x18\x0f').decode(), ''))


client.run(token)
# okay decompiling server.cpython-36.pyc

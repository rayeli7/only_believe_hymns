import 'package:flutter/material.dart';

class HymnInfos {
  HymnInfos({
    required this.hymnNumber,
    required this.hymnTitle,
    required this.hymnKey,
    required this.hymnLyrics,
    this.isFavourite = false,
  });

  final String hymnTitle;
  final String hymnNumber;
  final String hymnLyrics;
  final String hymnKey;
  bool isFavourite;
}

ValueNotifier<List<HymnInfos>> myFavourites = ValueNotifier([]);

final listHymns = [
  HymnInfos(
      hymnNumber: '1', hymnKey: 'C', hymnTitle: 'Only Believe', hymnLyrics: '''
Fear not, little flock, from the cross to
the throne, From death into life He
went for His own; All power in earth,
all power above, Is given to Him for
the flock of His love.

CHORUS
Only believe, only believe,
All things are possible, only
believe;
Only believe, only believe,
All things are possible, only
believe.
(Lord, I believe . . . )
(Lord, I receive . . .)
(Jesus is here . . . )

Fear not, little flock, He goeth ahead,
Your Shepherd selecteth the path you
must tread; The waters of Marah He'll
sweeten for thee, He drank all the
bitter in Gethsemane.

Fear not, little flock, whatever your lot,
He enters all rooms, “the doors being
shut;” He never forsakes, He never is
gone, So count on His presence in
darkness and dawn. 
'''),
  HymnInfos(
      hymnNumber: '2',
      hymnTitle: "Amazing Grace",
      hymnKey: 'Ab',
      hymnLyrics: '''
Amazing grace! How sweet the sound, 
That saved a wretch like me! I once 
was lost, but now am found, Was 
blind, but now I see. 

Twas grace that taught my heart to 
fear, And grace my fears relieved; 
How precious did that grace appear 
The hour I first believe! 

Through many dangers, toils and 
snares, I have already come; 'Tis grace 
hath brought me safe thus far, And 
grace will lead me home. 

When we've been there ten thousand 
years, Bright shining as the sun; 
We've no less days to sing God's praise 
Than when we first begun.
'''),
  HymnInfos(
      hymnNumber: '3', hymnKey: 'Eb', hymnTitle: 'THEY COME', hymnLyrics: '''
They come from the East and West, 
They come from the lands afar, To 
feast with the King, to done as His 
guest; How blessed these pilgrims are! 
Beholding His hallowed face, Aglow 
with light divine; Blest partakers of His 
grace, As gems in His crown to shine. 

CHORUS 
Since Jesus has set me free, 
I’m happy as heart can be; 
No longer I bear the burden of 
care, 
His yoke is so sweet to me. 
My soul was as black as night. 
But darkness has taken flight; 
Now I shout the victory, 
For Jesus has set me free. 

I look on the great white throne, 
Before it the ransom’d stand; No 
longer are tears, no sorrow is known 
Nor death in that goodly land. My 
Saviour has gone before, Preparing the 
way for me; Soon we’ll meet to part 
no more Thru time or eternity. 

The gates of that holy place Stand 
open by night and day; O look to the 
Lord who “giveth more grace,” 
Whose love has prepared the way. A 
home in those mansions fair His hand 
hath reserve for all. For the wedding 
feast prepare, Obeying the gracious 
call.
'''),
  HymnInfos(
      hymnNumber: '4', hymnTitle: 'I Love Him', hymnKey: 'c', hymnLyrics: '''
Gone from my heart the world and all 
its charms; Now, through the blood,
I’m saved from all alarms; Down at 
the cross my heart is bending low; The 
precious blood of Jesus cleanses white 
as snow.

CHORUS 
I love Him, I love Him 
Because He first loved me 
And purchased my salvation 
On Calvary’s tree.

Once I was lost, and ‘way down deep 
in sin; Once was a slave to passions 
fierce within, Once was afraid to trust 
a loving God; But now I’m cleansed 
from every stain through Jesus’ blood.

Once I was bound, but now I am set 
free; Once I was blind, but now the 
light I see; Once I was dead, but now 
in Christ I live, To tell the world 
around the peace that he doth give.
'''),
  HymnInfos(
      hymnNumber: '5',
      hymnKey: 'Eb',
      hymnTitle: 'Sweet Hour Of Prayer',
      hymnLyrics: '''
Sweet hour of prayer, sweet hour of 
prayer, That calls me from a world of 
care, And bids me, at my Father’s 
throne, Make all my wants and wishes 
known; In seasons of distress and 
grief, My soul has often found relief, 
And oft escaped the tempter’s snare, 
By thy return, sweet hour of prayer. 

Sweet hour of prayer, sweet hour of 
prayer, The joy I feel, the bliss I share, 
Of those whose anxious spirits burn 
With strong desires for thy return! 
With such I hasten to the place Where 
God, my Saviour, shows His face, 
And gladly take my station there, And 
wait for thee, sweet hour of prayer.

Sweet hour of prayer, sweet hour of 
prayer, Thy wings shall my petition 
bear To Him whose truth and 
faithfulness Engage the waiting soul to
bless; And since He bids me seek His 
face, Believe His Word and trust His 
grace, I’ll cast on Him my every care, 
And wait for thee, sweet hour of 
prayer.
'''),
  HymnInfos(
      hymnNumber: '6',
      hymnTitle: 'OH, HOW I LOVE JESUS',
      hymnKey: 'Ab',
      hymnLyrics: ''' 
There is a name I love to hear, I love 
to sing its worth; It sounds like music 
in mine ear, The sweetest name on 
earth. 

CHORUS 
Oh, how I love Jesus, 
Oh, how I love Jesus, 
Oh, how I love Jesus, 
Because He first love me. 
(I’ll never forsake Him . . .

It tells me of a Saviour’s love, Who 
died to set me free; It tells me of His 
precious blood; The sinner’s perfect 
plea. 

It tells me what my Father hath in store 
for every day, And though I tread a 
darksome path, yields sunshine all the 
way.

It tells of One whose loving heart Can 
feel my deepest woe, Who in each 
sorrow bears a part, That none can 
bear below.'''),
  HymnInfos(
      hymnNumber: '7',
      hymnKey: 'G',
      hymnTitle: 'WHEN THE REDEEMED GATHER',
      hymnLyrics: '''
I am thinking of the rapture in our 
blessed home on high, When the 
redeemed are gathering in; How we’ll 
raise the heavenly anthem in that city in 
the sky. When the redeemed are 
gathering in

CHORUS 
When the redeemed are gathering 
in,Washed like the snow, and free 
from all sin; 
How we will shout, and how we 
will sing, 
When the redeemed are gathering 
in.

There will be a great procession over 
on the streets of gold, When the 
redeemed are gathering in; O what 
music, O what singing, o’er the city will 
be rolled. When the redeemed are 
gathering in. 

Saints will sing redemption’s story with 
their voices clear and strong, When 
the redeemed are gathering in; Then 
the angels all will listen, For they 
cannot join that song, When the 
redeemed are gathering in.

Then the Saviour will give orders to 
prepare the banquet board, When the 
redeemed are gathering in; And we’ll 
hear His invitation, “Come, ye blessed 
of the Lord,” When the redeemed are 
gathering in.
'''),
  HymnInfos(
      hymnNumber: '8',
      hymnKey: 'Ab',
      hymnTitle: 'OH, I WANT TO SEE HIM',
      hymnLyrics: '''
As I journey through the land, singing 
as I go, Pointing souls to Calvary, to 
the crimson flow, Many arrows pierce 
my soul from without, within; But my 
Lord leads me on, through Him I 
must win.

CHORUS 
Oh. I want to see Him, look 
upon His face. 
There to sing forever of His 
saving grace; 
On the streets of Glory let me lift 
my voice. 
Cares all past, home at last, ever to 
rejoice.

When in service for my Lord, dark may 
be the night. But I’ll cling more close 
to Him, He will give me light; Satan’s 
snares may vex my soul, turn my 
thoughts aside; But my Lord goes 
ahead, leads whate’er betide.

When in valleys low I look toward the 
mountain height, And behold my 
Saviour there, leading in the fight. 
With a tender hand outstretched 
toward the valley low; Guiding me, I 
can see, as I onward go.

When before me billows rise from the 
mighty deep. Then my Lord directs 
my bark, He doth safely keep. And He 
leads me gently on through this world 
below; He’s a real Friend to me, O I 
love Him so.
'''),
  HymnInfos(
      hymnNumber: '9',
      hymnKey: 'F',
      hymnTitle: 'FEELING SO MUCH BETTER',
      hymnLyrics: '''
Feeling so much better talking about 
this food old Way, Feeling so much 
better talking about the Lord; Let’s go 
on, let’s go on talking about this good 
old Way, Let’s go on, let’s go on 
talking about the Lord.

CThe devil he don’t like it, talking about 
this good old Way. The devil he don’t 
like it, talking about the Lord; So, let’s 
go on, let’s go on talking bout this 
good old Way, Let’s go on, let’s go on 
talking about the Lord.
'''),
  HymnInfos(
      hymnNumber: '10',
      hymnKey: 'F',
      hymnTitle: 'TEACH ME, LORD, TO WAIT',
      hymnLyrics: '''
Teach me, Lord, to wait down on my 
knees. Till in Your own good time 
You answer my pleas; Teach me not 
to rely on what others do, But to wait 
in prayer for an answer from You.

CHORUS 
They that wait upon the Lord, 
shall renew their strength,They shall mount up with wings 
as an eagle. 
They shall run and not be weary, 
they shall walk and not faint; 
Teach me, Lord, teach me, Lord, to 
wait. 

Teach me, Lord, to wait while hearts 
are aflame, Help me humble my pride 
and call on Your name; Keep my faith 
renewed, keep my eyes on Thee, Help 
me be on this earth what You want me 
to be.
'''),
  HymnInfos(
      hymnNumber: '11',
      hymnKey: 'Bb',
      hymnTitle: 'HALLELUJAH, WE SHALL RISE',
      hymnLyrics: '''
In the resurrection morning, When 
the trump of God shall sound, We 
shall rise, ( Hallelujah! ) we shall rise! 
Then the saints will come rejoicing 
And no tears will e’er be found, We 
shall rise, ( Hallelujah!) we shall rise. 

CHORUS 
We shall rise, ( Hallelujah! ) 
We shall rise! ( Amen! ) 
We shall rise! ( Hallelujah! ) 
In the resurrection morning, When 
death’s prison bars are broken, We 
shall rise. ( Hallelujah! ) we shall 
rise. 

In the resurrection morning, What a 
meeting it will be, We shall rise, ( 
Hallelujah! ) we shall rise! When our 
fathers and our mothers, And our 
loved ones we shall see, We shall rise, ( 
Hallelujah! ) we shall rise. 
In the resurrection morning, Blessed 
thought it is to me, We shall rise, ( 
Hallelujah! ) we shall rise! I shall see 
my blessed Saviour, Who so freely 
died for me, We shall rise, ( Hallelujah! 
) we shall rise. 

In the resurrection morning, We shall 
meet Him in the air, We shall rise, ( 
Hallelujah! ) we shall rise! And be 
carried up to glory, To our home so 
bright and fair, We shall rise, ( 
Hallelujah! ) we shall rise. 
'''),
  HymnInfos(
      hymnNumber: '12',
      hymnKey: 'Ab',
      hymnTitle: 'WEAR A CROWN',
      hymnLyrics: '''
Am I a soldier of the cross, A follower 
of the Lamb, And shall I fear to won 
His cause, Or blush to speak His 
Name? 

CHORUS 
And when the battle’s over, we 
shall wear a crown! 
Yes, we shall wear a crown! Yes, 
we shall wear a crown In the new 
Jerusalem. 

Wear a crown, wear a crown. And 
when the battle’s over, we shall 
wear a crown 
In the new Jerusalem. 

Must I be carried to the skies On 
flow’ry beds of ease, While others 
fought to win the prize, And sailed 
through bloody seas? 

Are there no foes for me to face? 
Must I not stem the flood? Is this vile 
world a friend to grace To help me on 
to God? 

Sure I must fight if I would reign, 
Increase my courage, Lord; I’ll bear 
the toil, endure the pain, Supported by 
Thy Word. 
'''),
  HymnInfos(
      hymnNumber: '13',
      hymnKey: 'F',
      hymnTitle: 'MARVELOUS GRACE',
      hymnLyrics: '''
marvelous grace of our loving Lord, 
Grace that exceeds our sin and our 
guilt Yonder on Calvary’s mount 
outpoured, There where the Blood of 
the Lamb was spilt.
 
CHORUS 
Grace, grace, God’s grace, 
Grace that will pardon and 
cleanse within; 
Grace, grace, God’s grace, 
Grace that is greater than all our 
sin. 

Sin and despair like the sea waves cold, 
Threaten the soul with infinite loss; 
Grace that is greater, yes, grace untold, 
Points to the Refuge, the Mighty Cross. 

Dark is the stain that we cannot hide, 
What can avail to wash it away? Look! 
There is flowing a crimson tide; 
Whiter than snow you may be today. 

Marvelous, infinite, matchless grace, 
Freely bestowed on all who believe; 
You that are longing to see His face, 
Will you this moment His grace 
receive? 
'''),
  HymnInfos(
      hymnNumber: '14',
      hymnKey: 'Ab',
      hymnTitle: 'ZION’S HILL ',
      hymnLyrics: '''
There waits for me a glad tomorrow, 
Where gates of pearl swing open wide, 
And when I’ve passed this vale of 
sorrow, I’ll camp upon the other side. 

CHORUS 
Some day beyond the reach of 
mortal ken, 
Some day, God only knows just 
where and when, 
The wheels of mortal life shall all 
stand still. 
And I shall go to dwell on Zion’s 
hill. 

Some day I’ll hear the angels singing, 
Beyond the shadows of the tomb; 
And all the bells of heaven ringing, 
While saints are singing, “Home, sweet 
Home.” 

Some day my labors will be ended, 
and all my wand’rings will be o’er, And 
all earth’s broken ties be mended, And 
I shall sigh and weep no more. 

Some day the dark clouds will be rifted, 
And all the night of gloom be past; 
And all life’s burdens will be lifted, 
The day of rest shall dawn at last. 
'''),
  HymnInfos(
      hymnNumber: '15',
      hymnKey: 'G',
      hymnTitle: 'WE’RE MARCHING TO ZION',
      hymnLyrics: '''
Come, we that love the Lord, And let 
our joys be known, Join in a song with 
sweet accord, Join in a song with 
sweet accord, and thus surround the 
throne, And thus surround the throne. 

CHORUS 
We’re marching to Zion, 
Beautiful, beautiful Zion; 
We’re marching upward to Zion, 
The beautiful city of God. 

Let those refuse to sing Who never 
knew our God; But children of the 
heavenly King, But children of the 
heavenly King, May speak their joys 
abroad, May speak their joys abroad. 

The hill of Zion yields A thousand 
sacred sweets Before we reach the 
heavenly fields, Before we reach the 
heavenly fields, Or walk the golden 
streets, Or walk the golden streets. 
Then let our songs abound, And every 
tear be dry; We’re marching thru 
Immanuel’s ground, We’re marching 
thru Immanuel’s ground, To fairer 
worlds on high, To fairer worlds on 
high.
'''),
  HymnInfos(
      hymnNumber: '16', hymnKey: 'F', hymnTitle: 'CLEANSE ME ', hymnLyrics: '''
Search me, O God, and know my heart 
today; Try me, O Saviour, know my 
thoughts, I pray; See if there be some 
wicked way in me, Cleanse me from 
every sin, and set me free. 

I praise Thee, Lord, for cleansing me 
from sin; Fulfill Thy Word, and make 
me pure within; Fill me with fire, 
where once I burned with shame; 
Grant my desire to magnify Thy 
Name. 

Lord, take my life, and make it wholly 
Thine; Fill my poor heart with Thy 
great love divine; Take all my will, my 
passion, self and pride; I now 
surrender; Lord, in me abide. 

O Holy Ghost, revival comes from 
Thee; Send a revival, start the work in 
me; Thy Word declares Thou wilt 
supply our need; For blessing now, O 
Lord, I humbly plead. 
'''),
  HymnInfos(
      hymnNumber: '17',
      hymnKey: 'Bb',
      hymnTitle: 'MY SHEEP KNOW MY VOICE',
      hymnLyrics: '''
My sheep know My voice, And the 
path that I take, They follow wherever 
I go; My sheep know My voice And 
come at My call, But a stranger’s voice 
do they not know. 

CHORUS 
My sheep know My voice, 
And day by day, 
They abide in the fold, 
And go not astray; 
They love Me because 
I have made them My choice, 
And they follow My call, 

For My sheep know My voice. 
My sheep know My voice, And the 
pastures of green, Where I lead them 
so often to feed; My sheep know My 
voice, And the cool sparkling stream, 

Where beside its still waters I lead. 
My sheep know My voice, And the 
valley of death, Thru which I shall lead 
them some day; But no danger nor 
harm Can touch one of them, For I 
will be with them always. '''),
  HymnInfos(
      hymnNumber: '18',
      hymnKey: 'Eb',
      hymnTitle: 'ONWARD, CHRISTIAN SOLDIER',
      hymnLyrics: '''
Onward Christian soldiers! Marching 
as to war, With the cross of Jesus 
Going on before; Christ, the royal 
Master, Leads against the foe; 
Forward into battle, See, His banners 
go! 

CHORUS 
Onward, Christian soldiers! 
Marching as to war, 
With the cross of Jesus 
Going on before. 

Like a mighty army Moves the Church 
of God; Brothers, we are treading 
Where the saints have trod; We are 
not divided, All one body we: One in 
hope and doctrine, One in charity. 

Crowns and thrones may perish, 
Kingdoms rise and wane; But the 
Church of Jesus Constant will remain; 
Gates of hell can never ‘Gainst that 
church prevail; We have Christ’s own 
promise, Which can never fail. 

At the sign of triumph, Satan’s host 
doth flee; Oh, then Christian soldiers, 
On to victory! Hell’s foundations 
quiver At the shout of praise;
Brothers, lift your voices, Loud your 
anthems raise! 

Onward, then, ye people! Join our 
happy throng; Blend with ours your 
voices In the triumph song; Glory, 
laud, and honor, Unto Christ the King; 
This through countless ages Men and 
angels sing. '''),
  HymnInfos(
      hymnNumber: '19',
      hymnKey: 'Bb',
      hymnTitle: 'LET’S TALK ABOUT JESUS',
      hymnLyrics: '''
Let’s talk about Jesus. The King of 
kings is He, The Lord of lords, 
Supreme Throughout Eternity; The 
great I AM, the Way, The Truth, the 
Life, the Door; Let’s talk about Jesus 
More and more. '''),
  HymnInfos(
      hymnNumber: '20',
      hymnKey: 'G',
      hymnTitle: 'WHEN OUR LORD SHALL COME ',
      hymnLyrics: '''
when upon the clouds of heaven, 
Christ shall come to earth again. Will 
the world be glad to see Him, When 
our Lord shall come again? 

CHORUS 
There’ll be singing, There’ll be 
shouting, 
There’ll be sorrow, there’ll be 
pain, 
There’ll be weeping, there’ll be 
praying, 
When our Lord shall come again. 

Will his coming bring rejoicing? Or 
will it bring tears and pain? Are you 
ready to receive Him. When our Lord 
shall come again? 

Will you join in lamentation? Or the 
angel’s glad refrain? Will you help His 
people crown Him, When our Lord 
shall come again? 

Work and pray till Jesus calls you. 
Help to gather in the grain then with 
joy you’ll meet the Saviour, When our 
Lord shall come again. '''),
  HymnInfos(
      hymnNumber: '21',
      hymnKey: 'C',
      hymnTitle: 'THE FIGHT IS ON',
      hymnLyrics: '''
The fight is on, the trumpet sound is 
ringing out, The cry “To arms” is 
heard afar and near; The Lord of hosts 
is marching on to victory, The 
triumph of the right will soon appear. 

CHORUS 
The fight is on, O Christian 
soldiers, 
And face to face in stern array, 
With armor gleaming, and colors 
streaming, 
The right and wrong engage 
today; 
The fight is on, but be not weary, 
Be strong and in his might hold 
fast; 
If God be for us, his banner o’er 
us, 
We’ll sing the victor’s song at last. 
The fight is on, arouse ye soldiers 
brave and true, Jehovah leads, and 
vict’ry will assure; Go buckle on the 
armor God has given you. And in his 
strength unto the end endure. 

The Lord is leading on to certain 
victory, The bow of promise spans the 
eastern sky; His glorious name in every 
land shall honored be, The morn will 
break, the dawn of peace is nigh. '''),
  HymnInfos(
      hymnNumber: '22',
      hymnKey: 'Ab',
      hymnTitle: 'VICTORY IN JESUS',
      hymnLyrics: '''
I heard an old, old story, How a 
Saviour came from glory, how he gave 
His life on Calvary To save a wretch 
like me; I heard about His groaning, 
Of His precious blood’s atoning, Then 
I repented of my sins And won the 
victory. 
 
CHORUS 
O victory in Jesus. 
My Saviour, forever, 
He sought me and bought me 
With His redeeming blood; 
He loved me ere I knew Him 
And all my love is due Him, 
He plunged me to victory, 
Beneath the cleansing flood. 

I heard about His healing, Of His 
cleansing pow’r revealing, how he 
made the lame to walk again And 
caused the blind to see; And then I 
cried, “Dear Jesus, Come and heal my 
broken spirit,” And somehow Jesus 
came and brought To me the victory. 

I hard about a mansion He has built 
for me in glory, And I heard about the 
streets of gold Beyond the crystal sea; 
About the angels singing, And the old 
redemption story, And some sweet 
day I’ll sing up there The song of 
victory. '''),
  HymnInfos(
      hymnNumber: '23',
      hymnKey: 'Eb',
      hymnTitle: 'MY FAITH LOOKS UP TO THEE',
      hymnLyrics: '''
My faith looks up to Thee, Thou 
Lamb of Calvary, Saviour divine; 
Now hear me while I pray, Take all 
my sin away, O let me from this day 
Be wholly Thine! 

May Thy rich grace impart Strength to 
my fainting heart, My zeal inspire; As 
Thou hast died for me, O may my 
love to Thee, Pure, warm, and 
changeless be, A living fire! 

While life’s dark maze I tread, And 
griefs around me spread, Be Thou my 
Guide; Bid darkness turn to day, 
Wipe sorrow’s tears away, Nor let me 
ever stray From Thee aside. '''),
  HymnInfos(
      hymnNumber: '24',
      hymnKey: 'Eb',
      hymnTitle: 'LIVING BY FAITH ',
      hymnLyrics: '''
I care not today what the morrow may 
bring, If shadow or sunshine or rain, 
The Lord I know ruleth o’er 
everything, And all of my worry is vain. 

CHORUS 
Living by faith, in Jesus above, 
Trusting, confiding in His great 
love; 
From all harm safe in His 
sheltering arm, 
I’m living by faith and feel no 
alarm. 

Though tempest may blow and the 
storm clouds arise, Obscuring the 
brightness of life. I’m never alarmed at 
the overcast skies, The Master looks 
on at the strife. 

I know that he safely will carry me 
through, No matter what evils betide, 
Why should I then care, though the 
tempest may blow, If Jesus walks close 
to my side. 
Our lord will return to this earth some 
sweet day, Our troubles will then all be 
o’er. The Master so gently will lead us 
away, beyond that blest heavenly shore. '''),
  HymnInfos(
      hymnNumber: '25',
      hymnKey: 'Eb',
      hymnTitle: ' I SURRENDER ALL',
      hymnLyrics: '''
All to Jesus I surrender, All to Him I 
freely give; I will ever love and trust 
Him, In His presence daily live. 

CHORUS 
I surrender all, 
I surrender all, 
All to Thee, my blessed Saviour, 
I surrender all. 
All to Jesus I surrender, Humbly at 
His feet I bow, Worldly pleasures all
forsaken, Take me, Jesus, take me 
now. 

All to Jesus I surrender, make me, 
Saviour, wholly Thine; Let me feel the 
Holy Spirit, Truly know that Thou art 
mine. 

All to Jesus I surrender, Lord, I give 
myself to Thee; Fill me with Thy love 
and power, Let Thy blessing fall on 
me. 

All to Jesus I surrender, Now I feel the 
sacred flame; Oh, the joy of full 
salvation! Glory, glory to His name! '''),
  HymnInfos(
      hymnNumber: '26',
      hymnKey: 'Ab',
      hymnTitle: 'WHEN I REACH THAT CITY',
      hymnLyrics: '''
On the top of Mount Zion is a city 
And the earth with glory it doth fill; I 
shall look on its beauty in the morning 
When I reach that city on the hill. 

CHORUS 
Oh, that city on Mount Zion, 
Tho’ a pilgrim, yet I love thee 
still; 
I’ll not leave thee, through the 
ages, 
When I reach that city on the hill. 
I’m invited to come home to that city, 
For the Word says, “Whosoever will,” 
And I’ll find there a mansion for me 
waiting When I reach that city on the 
hill. 

Death will never molest me in that city, 
Never leave me lying cold and chill; 
And I’ll enter to live up there forever 
When I reach that city on the hill. 
So I’ll stay here until my Saviour calls 
me, Trying daily to perform his will, 
Then He’ll say unto me, “Well done,” 
up yonder, When I reach that city on 
the hill. '''),
  HymnInfos(
      hymnNumber: '27',
      hymnKey: 'F',
      hymnTitle: 'FARTHER ALONG',
      hymnLyrics: '''
TTempted and tried we’re oft made to 
wonder, Why it should be thus all the 
day long, While there are others living 
about us, Never molested though in 
the wrong. 

CHORUS 
Farther along we’ll know all about 
it. 
Farther along we’ll understand 
why; 
Cheer up, my brother, live in the 
sunshine, 
We’ll understand it all by and by. 

When death has come and taken our 
loved ones, It leaves our home so 
lonely and drear; Then do we wonder 
why others prosper, Living so wicked 
year after year. 

Faithful till death said our loving 
Master, A few more days to labor and 
wait’ Toils of the road will then seem 
as nothing, As we sweep through the 
beautiful gate. 

When we see Jesus coming in glory, 
When He comes from His home in the 
sky; then we shall meet Him in that 
bright mansion, We’ll understand it all 
by and by. 
'''),
  HymnInfos(
      hymnNumber: '28',
      hymnKey: 'Ab',
      hymnTitle: 'FILL MY WAY WITH LOVE ',
      hymnLyrics: '''
Let me walk, blessed Lord, in the way 
Thou hast gone, Leading straight to 
the land above; Giving cheer 
everywhere, to the sad and the lone, 
Fill my way every day with love. 

CHORUS 
Fill my way every day with love,
As I walk with the heavenly Dove; 
Let me go all the while, with a 
song and a smile, 
Fill my way every day with love.

Keep me close to the side of my 
Saviour and Guide, Let me never in 
darkness rove; Keep my path free 
from wrath, and my soul satisfied, Fill 
my way every day with love. 

Soon the race will be o’er, and I’ll travel 
no more, But abide in my home 
above; Let me sing, blessed King, all 
the way to the shor '''),
  HymnInfos(
      hymnNumber: '29',
      hymnKey: 'Bb',
      hymnTitle: 'I AM RESOLVED ',
      hymnLyrics: '''
I am resolved no longer to linger, 
Charmed by the world’s delight; 
Things that are higher, things that are 
nobler, These have allured my sight. 

CHORUS 
I will hasten to Him, 
Hasten so glad and free, 
Jesus, greatest, highest, 
I will come to Thee. 

I am resolved to go to the Saviour, 
Leaving my sin and strife; He is the 
true one, He is the just one, He hath 
the words of life. 

I am resolved to follow the Saviour, 
Faithful and true each day; Heed what 
He sayeth, do what He willeth, He is 
the living way. 

I am resolved to enter the kingdom, 
Leaving the paths of sin; Friends may 
oppose me, foes may beset me, Still 
will I enter in. 

I am resolved, and who will go with 
me? Come, friends, without delay, 
Taught by the Bible, led by the Spirit, 
We’ll walk the heavenly way. 
'''),
  HymnInfos(
      hymnNumber: '30',
      hymnKey: 'G',
      hymnTitle: 'HIGHER GROUND',
      hymnLyrics: '''
I’m pressing on the upward way, New 
heights I’m gaining every day; Still 
praying as I’m onward bound, “Lord, 
plant my feet on higher ground.” 

CHORUS 
Lord, lift me up and let me stand, 
By faith, on heaven’s table land, 
A higher plane than I have found; 
Lord, plant my feet on higher 
ground. 

My heart has no desire to stay, Where 
doubts arise and fears dismay; Tho’ 
some may dwell where these abound, 
My prayer, my aim, is higher ground. 
I want to scale the utmost height, And 
catch a gleam of glory bright; But still 
I’ll pray till heav’n I’ve found, “Lord, 
lead me on to higher ground.” '''),
  HymnInfos(
      hymnNumber: '31',
      hymnKey: 'Bb',
      hymnTitle: 'STANDING ON THE PROMISES',
      hymnLyrics: '''
Standing on the promises of Christ my 
King, Through eternal ages let His 
praises ring; Glory in the highest I will 
shout and sing, Standing on the 
promises of God. 

CHORUS 
Standing, standing, 
Standing on the promises of God 
my Saviour, 
Standing, standing, 
I’m standing on the promises of 
God. 

Standing on the promises that cannot 
fail, When the howling storms of 
doubt and fear assail, By the living
Word of God I shall prevail, Standing 
on the promises of God. 

Standing on the promises I now can 
see Perfect, present cleansing in the 
blood for me; Standing in the liberty 
where Christ makes free, Standing on 
the promises of God. 

Standing on the promises of Christ the 
Lord, Bound to Him eternally by 
love’s strong cord, Overcoming daily 
with the Spirit’s sword, Standing on 
the promises of God.

Standing on the promises I cannot fall, 
List’ning every moment to the Spirit’s 
call, Resting in my Saviour, as my all in 
all, Standing on the promises of God.
 '''),
];

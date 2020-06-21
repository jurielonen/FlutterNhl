const String scheduleResp = '''
{
	"copyright": "NHL and the NHL Shield are registered trademarks of the National Hockey League. NHL and NHL team marks are the property of the NHL and its teams. © NHL 2020. All Rights Reserved.",
	"totalItems": 12,
	"totalEvents": 0,
	"totalGames": 12,
	"totalMatches": 0,
	"wait": 10,
	"dates": [
		{
			"date": "2019-12-12",
			"totalItems": 12,
			"totalEvents": 0,
			"totalGames": 12,
			"totalMatches": 0,
			"games": [
				{
					"gamePk": 2019020487,
					"link": "/api/v1/game/2019020487/feed/live",
					"gameType": "R",
					"season": "20192020",
					"gameDate": "2019-12-13T00:00:00Z",
					"status": {
						"abstractGameState": "Final",
						"codedGameState": "7",
						"detailedState": "Final",
						"statusCode": "7",
						"startTimeTBD": false
					},
					"teams": {
						"away": {
							"leagueRecord": {
								"wins": 14,
								"losses": 11,
								"ot": 5,
								"type": "league"
							},
							"score": 3,
							"team": {
								"id": 18,
								"name": "Nashville Predators",
								"link": "/api/v1/teams/18",
								"venue": {
									"id": 5030,
									"name": "Bridgestone Arena",
									"link": "/api/v1/venues/5030",
									"city": "Nashville",
									"timeZone": {
										"id": "America/Chicago",
										"offset": -5,
										"tz": "CDT"
									}
								},
								"abbreviation": "NSH",
								"teamName": "Predators",
								"locationName": "Nashville",
								"firstYearOfPlay": "1998",
								"division": {
									"id": 16,
									"name": "Central",
									"nameShort": "CEN",
									"link": "/api/v1/divisions/16",
									"abbreviation": "C"
								},
								"conference": {
									"id": 5,
									"name": "Western",
									"link": "/api/v1/conferences/5"
								},
								"franchise": {
									"franchiseId": 34,
									"teamName": "Predators",
									"link": "/api/v1/franchises/34"
								},
								"shortName": "Nashville",
								"officialSiteUrl": "http://www.nashvillepredators.com/",
								"franchiseId": 34,
								"active": true
							}
						},
						"home": {
							"leagueRecord": {
								"wins": 16,
								"losses": 11,
								"ot": 6,
								"type": "league"
							},
							"score": 4,
							"team": {
								"id": 7,
								"name": "Buffalo Sabres",
								"link": "/api/v1/teams/7",
								"venue": {
									"id": 5039,
									"name": "KeyBank Center",
									"link": "/api/v1/venues/5039",
									"city": "Buffalo",
									"timeZone": {
										"id": "America/New_York",
										"offset": -4,
										"tz": "EDT"
									}
								},
								"abbreviation": "BUF",
								"teamName": "Sabres",
								"locationName": "Buffalo",
								"firstYearOfPlay": "1970",
								"division": {
									"id": 17,
									"name": "Atlantic",
									"nameShort": "ATL",
									"link": "/api/v1/divisions/17",
									"abbreviation": "A"
								},
								"conference": {
									"id": 6,
									"name": "Eastern",
									"link": "/api/v1/conferences/6"
								},
								"franchise": {
									"franchiseId": 19,
									"teamName": "Sabres",
									"link": "/api/v1/franchises/19"
								},
								"shortName": "Buffalo",
								"officialSiteUrl": "http://www.sabres.com/",
								"franchiseId": 19,
								"active": true
							}
						}
					},
					"linescore": {
						"currentPeriod": 3,
						"currentPeriodOrdinal": "3rd",
						"currentPeriodTimeRemaining": "Final",
						"periods": [
							{
								"periodType": "REGULAR",
								"startTime": "2019-12-13T00:07:58Z",
								"endTime": "2019-12-13T00:44:43Z",
								"num": 1,
								"ordinalNum": "1st",
								"home": {
									"goals": 1,
									"shotsOnGoal": 15,
									"rinkSide": "left"
								},
								"away": {
									"goals": 2,
									"shotsOnGoal": 12,
									"rinkSide": "right"
								}
							},
							{
								"periodType": "REGULAR",
								"startTime": "2019-12-13T01:02:41Z",
								"endTime": "2019-12-13T01:37:59Z",
								"num": 2,
								"ordinalNum": "2nd",
								"home": {
									"goals": 2,
									"shotsOnGoal": 9,
									"rinkSide": "right"
								},
								"away": {
									"goals": 1,
									"shotsOnGoal": 12,
									"rinkSide": "left"
								}
							},
							{
								"periodType": "REGULAR",
								"startTime": "2019-12-13T01:56:01Z",
								"endTime": "2019-12-13T02:35:15Z",
								"num": 3,
								"ordinalNum": "3rd",
								"home": {
									"goals": 1,
									"shotsOnGoal": 8,
									"rinkSide": "left"
								},
								"away": {
									"goals": 0,
									"shotsOnGoal": 15,
									"rinkSide": "right"
								}
							}
						],
						"shootoutInfo": {
							"away": {
								"scores": 0,
								"attempts": 0
							},
							"home": {
								"scores": 0,
								"attempts": 0
							}
						},
						"teams": {
							"home": {
								"team": {
									"id": 7,
									"name": "Buffalo Sabres",
									"link": "/api/v1/teams/7"
								},
								"goals": 4,
								"shotsOnGoal": 32,
								"goaliePulled": false,
								"numSkaters": 5,
								"powerPlay": false
							},
							"away": {
								"team": {
									"id": 18,
									"name": "Nashville Predators",
									"link": "/api/v1/teams/18"
								},
								"goals": 3,
								"shotsOnGoal": 39,
								"goaliePulled": false,
								"numSkaters": 5,
								"powerPlay": false
							}
						},
						"powerPlayStrength": "Even",
						"hasShootout": false,
						"intermissionInfo": {
							"intermissionTimeRemaining": 0,
							"intermissionTimeElapsed": 0,
							"inIntermission": false
						},
						"powerPlayInfo": {
							"situationTimeRemaining": 0,
							"situationTimeElapsed": 0,
							"inSituation": false
						}
					},
					"decisions": {
						"winner": {
							"id": 8476999,
							"fullName": "Linus Ullmark",
							"link": "/api/v1/people/8476999"
						},
						"loser": {
							"id": 8477424,
							"fullName": "Juuse Saros",
							"link": "/api/v1/people/8477424"
						},
						"firstStar": {
							"id": 8478403,
							"fullName": "Jack Eichel",
							"link": "/api/v1/people/8478403"
						},
						"secondStar": {
							"id": 8478109,
							"fullName": "Victor Olofsson",
							"link": "/api/v1/people/8478109"
						},
						"thirdStar": {
							"id": 8477933,
							"fullName": "Sam Reinhart",
							"link": "/api/v1/people/8477933"
						}
					},
					"scoringPlays": [
						{
							"players": [
								{
									"player": {
										"id": 8475168,
										"fullName": "Matt Duchene",
										"link": "/api/v1/people/8475168"
									},
									"playerType": "Scorer",
									"seasonTotal": 8
								},
								{
									"player": {
										"id": 8474068,
										"fullName": "Kyle Turris",
										"link": "/api/v1/people/8474068"
									},
									"playerType": "Assist",
									"seasonTotal": 7
								},
								{
									"player": {
										"id": 8476999,
										"fullName": "Linus Ullmark",
										"link": "/api/v1/people/8476999"
									},
									"playerType": "Goalie"
								}
							],
							"result": {
								"event": "Goal",
								"eventCode": "BUF207",
								"eventTypeId": "GOAL",
								"description": "Matt Duchene (8) Wrist Shot, assists: Kyle Turris (7)",
								"secondaryType": "Wrist Shot",
								"strength": {
									"code": "EVEN",
									"name": "Even"
								},
								"gameWinningGoal": false,
								"emptyNet": false
							},
							"about": {
								"eventIdx": 13,
								"eventId": 207,
								"period": 1,
								"periodType": "REGULAR",
								"ordinalNum": "1st",
								"periodTime": "00:57",
								"periodTimeRemaining": "19:03",
								"dateTime": "2019-12-13T00:10:47Z",
								"goals": {
									"away": 1,
									"home": 0
								}
							},
							"coordinates": {
								"x": -87.0,
								"y": 7.0
							},
							"team": {
								"id": 18,
								"name": "Nashville Predators",
								"link": "/api/v1/teams/18"
							}
						},
						{
							"players": [
								{
									"player": {
										"id": 8476918,
										"fullName": "Jimmy Vesey",
										"link": "/api/v1/people/8476918"
									},
									"playerType": "Scorer",
									"seasonTotal": 4
								},
								{
									"player": {
										"id": 8477499,
										"fullName": "Rasmus Ristolainen",
										"link": "/api/v1/people/8477499"
									},
									"playerType": "Assist",
									"seasonTotal": 13
								},
								{
									"player": {
										"id": 8477424,
										"fullName": "Juuse Saros",
										"link": "/api/v1/people/8477424"
									},
									"playerType": "Goalie"
								}
							],
							"result": {
								"event": "Goal",
								"eventCode": "BUF250",
								"eventTypeId": "GOAL",
								"description": "Jimmy Vesey (4) Tip-In, assists: Rasmus Ristolainen (13)",
								"secondaryType": "Tip-In",
								"strength": {
									"code": "EVEN",
									"name": "Even"
								},
								"gameWinningGoal": false,
								"emptyNet": false
							},
							"about": {
								"eventIdx": 74,
								"eventId": 250,
								"period": 1,
								"periodType": "REGULAR",
								"ordinalNum": "1st",
								"periodTime": "14:33",
								"periodTimeRemaining": "05:27",
								"dateTime": "2019-12-13T00:32:46Z",
								"goals": {
									"away": 1,
									"home": 1
								}
							},
							"coordinates": {
								"x": 79.0,
								"y": 1.0
							},
							"team": {
								"id": 7,
								"name": "Buffalo Sabres",
								"link": "/api/v1/teams/7"
							}
						},
						{
							"players": [
								{
									"player": {
										"id": 8476925,
										"fullName": "Colton Sissons",
										"link": "/api/v1/people/8476925"
									},
									"playerType": "Scorer",
									"seasonTotal": 7
								},
								{
									"player": {
										"id": 8475176,
										"fullName": "Ryan Ellis",
										"link": "/api/v1/people/8475176"
									},
									"playerType": "Assist",
									"seasonTotal": 17
								},
								{
									"player": {
										"id": 8476999,
										"fullName": "Linus Ullmark",
										"link": "/api/v1/people/8476999"
									},
									"playerType": "Goalie"
								}
							],
							"result": {
								"event": "Goal",
								"eventCode": "BUF354",
								"eventTypeId": "GOAL",
								"description": "Colton Sissons (7) Tip-In, assists: Ryan Ellis (17)",
								"secondaryType": "Tip-In",
								"strength": {
									"code": "EVEN",
									"name": "Even"
								},
								"gameWinningGoal": false,
								"emptyNet": false
							},
							"about": {
								"eventIdx": 80,
								"eventId": 354,
								"period": 1,
								"periodType": "REGULAR",
								"ordinalNum": "1st",
								"periodTime": "15:32",
								"periodTimeRemaining": "04:28",
								"dateTime": "2019-12-13T00:34:40Z",
								"goals": {
									"away": 2,
									"home": 1
								}
							},
							"coordinates": {
								"x": -71.0,
								"y": 2.0
							},
							"team": {
								"id": 18,
								"name": "Nashville Predators",
								"link": "/api/v1/teams/18"
							}
						},
						{
							"players": [
								{
									"player": {
										"id": 8478403,
										"fullName": "Jack Eichel",
										"link": "/api/v1/people/8478403"
									},
									"playerType": "Scorer",
									"seasonTotal": 21
								},
								{
									"player": {
										"id": 8477933,
										"fullName": "Sam Reinhart",
										"link": "/api/v1/people/8477933"
									},
									"playerType": "Assist",
									"seasonTotal": 14
								},
								{
									"player": {
										"id": 8476525,
										"fullName": "Colin Miller",
										"link": "/api/v1/people/8476525"
									},
									"playerType": "Assist",
									"seasonTotal": 5
								},
								{
									"player": {
										"id": 8477424,
										"fullName": "Juuse Saros",
										"link": "/api/v1/people/8477424"
									},
									"playerType": "Goalie"
								}
							],
							"result": {
								"event": "Goal",
								"eventCode": "BUF385",
								"eventTypeId": "GOAL",
								"description": "Jack Eichel (21) Snap Shot, assists: Sam Reinhart (14), Colin Miller (5)",
								"secondaryType": "Snap Shot",
								"strength": {
									"code": "EVEN",
									"name": "Even"
								},
								"gameWinningGoal": false,
								"emptyNet": false
							},
							"about": {
								"eventIdx": 128,
								"eventId": 385,
								"period": 2,
								"periodType": "REGULAR",
								"ordinalNum": "2nd",
								"periodTime": "04:55",
								"periodTimeRemaining": "15:05",
								"dateTime": "2019-12-13T01:09:06Z",
								"goals": {
									"away": 2,
									"home": 2
								}
							},
							"coordinates": {
								"x": -71.0,
								"y": -21.0
							},
							"team": {
								"id": 7,
								"name": "Buffalo Sabres",
								"link": "/api/v1/teams/7"
							}
						},
						{
							"players": [
								{
									"player": {
										"id": 8478403,
										"fullName": "Jack Eichel",
										"link": "/api/v1/people/8478403"
									},
									"playerType": "Scorer",
									"seasonTotal": 22
								},
								{
									"player": {
										"id": 8480035,
										"fullName": "Henri Jokiharju",
										"link": "/api/v1/people/8480035"
									},
									"playerType": "Assist",
									"seasonTotal": 7
								},
								{
									"player": {
										"id": 8480839,
										"fullName": "Rasmus Dahlin",
										"link": "/api/v1/people/8480839"
									},
									"playerType": "Assist",
									"seasonTotal": 16
								},
								{
									"player": {
										"id": 8477424,
										"fullName": "Juuse Saros",
										"link": "/api/v1/people/8477424"
									},
									"playerType": "Goalie"
								}
							],
							"result": {
								"event": "Goal",
								"eventCode": "BUF558",
								"eventTypeId": "GOAL",
								"description": "Jack Eichel (22) Tip-In, assists: Henri Jokiharju (7), Rasmus Dahlin (16)",
								"secondaryType": "Tip-In",
								"strength": {
									"code": "EVEN",
									"name": "Even"
								},
								"gameWinningGoal": false,
								"emptyNet": false
							},
							"about": {
								"eventIdx": 170,
								"eventId": 558,
								"period": 2,
								"periodType": "REGULAR",
								"ordinalNum": "2nd",
								"periodTime": "14:21",
								"periodTimeRemaining": "05:39",
								"dateTime": "2019-12-13T01:26:58Z",
								"goals": {
									"away": 2,
									"home": 3
								}
							},
							"coordinates": {
								"x": -76.0,
								"y": 4.0
							},
							"team": {
								"id": 7,
								"name": "Buffalo Sabres",
								"link": "/api/v1/teams/7"
							}
						},
						{
							"players": [
								{
									"player": {
										"id": 8475793,
										"fullName": "Ryan Johansen",
										"link": "/api/v1/people/8475793"
									},
									"playerType": "Scorer",
									"seasonTotal": 6
								},
								{
									"player": {
										"id": 8476887,
										"fullName": "Filip Forsberg",
										"link": "/api/v1/people/8476887"
									},
									"playerType": "Assist",
									"seasonTotal": 11
								},
								{
									"player": {
										"id": 8475714,
										"fullName": "Calle Jarnkrok",
										"link": "/api/v1/people/8475714"
									},
									"playerType": "Assist",
									"seasonTotal": 11
								},
								{
									"player": {
										"id": 8476999,
										"fullName": "Linus Ullmark",
										"link": "/api/v1/people/8476999"
									},
									"playerType": "Goalie"
								}
							],
							"result": {
								"event": "Goal",
								"eventCode": "BUF562",
								"eventTypeId": "GOAL",
								"description": "Ryan Johansen (6) Wrist Shot, assists: Filip Forsberg (11), Calle Jarnkrok (11)",
								"secondaryType": "Wrist Shot",
								"strength": {
									"code": "EVEN",
									"name": "Even"
								},
								"gameWinningGoal": false,
								"emptyNet": false
							},
							"about": {
								"eventIdx": 175,
								"eventId": 562,
								"period": 2,
								"periodType": "REGULAR",
								"ordinalNum": "2nd",
								"periodTime": "16:07",
								"periodTimeRemaining": "03:53",
								"dateTime": "2019-12-13T01:29:23Z",
								"goals": {
									"away": 3,
									"home": 3
								}
							},
							"coordinates": {
								"x": 75.0,
								"y": 0.0
							},
							"team": {
								"id": 18,
								"name": "Nashville Predators",
								"link": "/api/v1/teams/18"
							}
						},
						{
							"players": [
								{
									"player": {
										"id": 8478109,
										"fullName": "Victor Olofsson",
										"link": "/api/v1/people/8478109"
									},
									"playerType": "Scorer",
									"seasonTotal": 13
								},
								{
									"player": {
										"id": 8477986,
										"fullName": "Brandon Montour",
										"link": "/api/v1/people/8477986"
									},
									"playerType": "Assist",
									"seasonTotal": 8
								},
								{
									"player": {
										"id": 8477933,
										"fullName": "Sam Reinhart",
										"link": "/api/v1/people/8477933"
									},
									"playerType": "Assist",
									"seasonTotal": 15
								},
								{
									"player": {
										"id": 8477424,
										"fullName": "Juuse Saros",
										"link": "/api/v1/people/8477424"
									},
									"playerType": "Goalie"
								}
							],
							"result": {
								"event": "Goal",
								"eventCode": "BUF597",
								"eventTypeId": "GOAL",
								"description": "Victor Olofsson (13) Wrist Shot, assists: Brandon Montour (8), Sam Reinhart (15)",
								"secondaryType": "Wrist Shot",
								"strength": {
									"code": "EVEN",
									"name": "Even"
								},
								"gameWinningGoal": true,
								"emptyNet": false
							},
							"about": {
								"eventIdx": 233,
								"eventId": 597,
								"period": 3,
								"periodType": "REGULAR",
								"ordinalNum": "3rd",
								"periodTime": "08:29",
								"periodTimeRemaining": "11:31",
								"dateTime": "2019-12-13T02:13:35Z",
								"goals": {
									"away": 3,
									"home": 4
								}
							},
							"coordinates": {
								"x": 81.0,
								"y": -6.0
							},
							"team": {
								"id": 7,
								"name": "Buffalo Sabres",
								"link": "/api/v1/teams/7"
							}
						}
					],
					"venue": {
						"id": 5039,
						"name": "KeyBank Center",
						"link": "/api/v1/venues/5039"
					},
					"content": {
						"link": "/api/v1/game/2019020487/content",
						"editorial": {},
						"media": {
							"epg": [
								{
									"title": "NHLTV",
									"platform": "web",
									"items": [
										{
											"guid": "66d72447-a3a5-4873-bd7a-29188182d146",
											"mediaState": "MEDIA_ARCHIVE",
											"mediaPlaybackId": "70344803",
											"mediaFeedType": "HOME",
											"callLetters": "MSG-B",
											"eventId": "221-2003790",
											"language": "eng",
											"freeGame": true,
											"feedName": "",
											"gamePlus": false
										},
										{
											"guid": "e998e7b8-c817-4bad-a569-303f6cbeb17c",
											"mediaState": "MEDIA_ARCHIVE",
											"mediaPlaybackId": "70344903",
											"mediaFeedType": "AWAY",
											"callLetters": "FS-TN",
											"eventId": "221-2003790",
											"language": "eng",
											"freeGame": true,
											"feedName": "",
											"gamePlus": false
										},
										{
											"guid": "ca22a9ce-3625-4ca9-a33c-bf3e17756dc6",
											"mediaState": "MEDIA_ARCHIVE",
											"mediaPlaybackId": "70345403",
											"mediaFeedType": "COMPOSITE",
											"callLetters": "",
											"eventId": "221-2003790",
											"language": "eng",
											"freeGame": true,
											"feedName": "Multi-Cam 1",
											"gamePlus": false
										}
									]
								},
								{
									"title": "Audio",
									"items": [
										{
											"mediaState": "MEDIA_DONE",
											"mediaPlaybackId": "70345003",
											"mediaFeedType": "HOME",
											"callLetters": "WGR",
											"eventId": "221-2003790",
											"language": "eng",
											"freeGame": false,
											"feedName": "",
											"gamePlus": false
										},
										{
											"mediaState": "MEDIA_DONE",
											"mediaPlaybackId": "70345103",
											"mediaFeedType": "AWAY",
											"callLetters": "WPRT",
											"eventId": "221-2003790",
											"language": "eng",
											"freeGame": false,
											"feedName": "",
											"gamePlus": false
										}
									]
								},
								{
									"title": "Extended Highlights",
									"topicList": "311476106",
									"items": [
										{
											"type": "video",
											"id": "4814754",
											"date": "2019-12-12T19:00:00-0500",
											"title": "NSH @ BUF",
											"blurb": "Condensed Game: Predators @ Sabres",
											"description": "Extended highlights of the Nashville Predators at the Buffalo Sabres",
											"duration": "09:00",
											"authFlow": false,
											"mediaPlaybackId": "4814754",
											"mediaState": "MEDIA_ARCHIVE",
											"keywords": [
												{
													"type": "shareable",
													"value": "Y",
													"displayName": "Y"
												},
												{
													"type": "embeddable",
													"value": "Y",
													"displayName": "Y"
												},
												{
													"type": "content",
													"value": "extendedHighlights",
													"displayName": "Condensed Game"
												},
												{
													"type": "teamId",
													"value": "7",
													"displayName": "7"
												},
												{
													"type": "teamId",
													"value": "18",
													"displayName": "18"
												},
												{
													"type": "language",
													"value": "en",
													"displayName": "English"
												}
											],
											"image": {
												"title": "",
												"altText": "",
												"cuts": {
													"1136x640": {
														"aspectRatio": "16:9",
														"width": 1136,
														"height": 640,
														"src": "https://nhl.bamcontent.com/images/photos/312511502/1136x640/cut.jpg",
														"at2x": "https://nhl.bamcontent.com/images/photos/312511502/1136x640/cut.jpg",
														"at3x": "https://nhl.bamcontent.com/images/photos/312511502/1136x640/cut.jpg"
													},
													"1024x576": {
														"aspectRatio": "16:9",
														"width": 1024,
														"height": 576,
														"src": "https://nhl.bamcontent.com/images/photos/312511502/1024x576/cut.jpg",
														"at2x": "https://nhl.bamcontent.com/images/photos/312511502/1024x576/cut.jpg",
														"at3x": "https://nhl.bamcontent.com/images/photos/312511502/1024x576/cut.jpg"
													},
													"960x540": {
														"aspectRatio": "16:9",
														"width": 960,
														"height": 540,
														"src": "https://nhl.bamcontent.com/images/photos/312511502/960x540/cut.jpg",
														"at2x": "https://nhl.bamcontent.com/images/photos/312511502/960x540/cut.jpg",
														"at3x": "https://nhl.bamcontent.com/images/photos/312511502/960x540/cut.jpg"
													},
													"768x432": {
														"aspectRatio": "16:9",
														"width": 768,
														"height": 432,
														"src": "https://nhl.bamcontent.com/images/photos/312511502/768x432/cut.jpg",
														"at2x": "https://nhl.bamcontent.com/images/photos/312511502/768x432/cut.jpg",
														"at3x": "https://nhl.bamcontent.com/images/photos/312511502/768x432/cut.jpg"
													},
													"640x360": {
														"aspectRatio": "16:9",
														"width": 640,
														"height": 360,
														"src": "https://nhl.bamcontent.com/images/photos/312511502/640x360/cut.jpg",
														"at2x": "https://nhl.bamcontent.com/images/photos/312511502/640x360/cut.jpg",
														"at3x": "https://nhl.bamcontent.com/images/photos/312511502/640x360/cut.jpg"
													},
													"568x320": {
														"aspectRatio": "16:9",
														"width": 568,
														"height": 320,
														"src": "https://nhl.bamcontent.com/images/photos/312511502/568x320/cut.jpg",
														"at2x": "https://nhl.bamcontent.com/images/photos/312511502/1136x640/cut.jpg",
														"at3x": "https://nhl.bamcontent.com/images/photos/312511502/568x320/cut.jpg"
													},
													"372x210": {
														"aspectRatio": "16:9",
														"width": 372,
														"height": 210,
														"src": "https://nhl.bamcontent.com/images/photos/312511502/372x210/cut.jpg",
														"at2x": "https://nhl.bamcontent.com/images/photos/312511502/372x210/cut.jpg",
														"at3x": "https://nhl.bamcontent.com/images/photos/312511502/372x210/cut.jpg"
													},
													"320x180": {
														"aspectRatio": "16:9",
														"width": 320,
														"height": 180,
														"src": "https://nhl.bamcontent.com/images/photos/312511502/320x180/cut.jpg",
														"at2x": "https://nhl.bamcontent.com/images/photos/312511502/640x360/cut.jpg",
														"at3x": "https://nhl.bamcontent.com/images/photos/312511502/960x540/cut.jpg"
													},
													"248x140": {
														"aspectRatio": "16:9",
														"width": 248,
														"height": 140,
														"src": "https://nhl.bamcontent.com/images/photos/312511502/248x140/cut.jpg",
														"at2x": "https://nhl.bamcontent.com/images/photos/312511502/248x140/cut.jpg",
														"at3x": "https://nhl.bamcontent.com/images/photos/312511502/248x140/cut.jpg"
													},
													"124x70": {
														"aspectRatio": "16:9",
														"width": 124,
														"height": 70,
														"src": "https://nhl.bamcontent.com/images/photos/312511502/124x70/cut.jpg",
														"at2x": "https://nhl.bamcontent.com/images/photos/312511502/248x140/cut.jpg",
														"at3x": "https://nhl.bamcontent.com/images/photos/312511502/372x210/cut.jpg"
													}
												}
											},
											"playbacks": [
												{
													"name": "FLASH_192K_320X180",
													"width": "320",
													"height": "180",
													"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/1fc5af4f-4523-4ffc-88b1-04597983b120.mp4"
												},
												{
													"name": "FLASH_450K_384x216",
													"width": null,
													"height": null,
													"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/8522ee70-1791-47ba-b132-14f66e5f3f0f.mp4"
												},
												{
													"name": "FLASH_1200K_640X360",
													"width": "640",
													"height": "360",
													"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/f450af8d-84d1-4f3f-901c-80e256897fe1.mp4"
												},
												{
													"name": "FLASH_1800K_896x504",
													"width": null,
													"height": null,
													"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/641d0247-06c7-4a42-819d-f50085837940.mp4"
												},
												{
													"name": "HTTP_CLOUD_MOBILE",
													"width": "null",
													"height": "null",
													"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/4746283/MasterMobile.m3u8"
												},
												{
													"name": "HTTP_CLOUD_TABLET",
													"width": "null",
													"height": "null",
													"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/4746283/MasterTablet.m3u8"
												},
												{
													"name": "HTTP_CLOUD_TABLET_60",
													"width": null,
													"height": null,
													"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/4746283/MasterTablet60.m3u8"
												},
												{
													"name": "HTTP_CLOUD_WIRED",
													"width": "null",
													"height": "null",
													"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/4746283/MasterWired.m3u8"
												},
												{
													"name": "HTTP_CLOUD_WIRED_60",
													"width": null,
													"height": null,
													"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/4746283/MasterWired60.m3u8"
												},
												{
													"name": "HTTP_CLOUD_WIRED_WEB",
													"width": null,
													"height": null,
													"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/4746283/MasterWiredWeb.m3u8"
												}
											]
										}
									]
								},
								{
									"title": "Recap",
									"topicList": "311476106",
									"items": [
										{
											"type": "video",
											"id": "4814767",
											"date": "2019-12-12T19:00:00-0500",
											"title": "Recap: NSH 3, BUF 4",
											"blurb": "Eichel extends point streak, leads Sabres past Preds",
											"description": "Jack Eichel scored two goals to extend his point streak to 15 games and Victor Olofsson scored the game-winning goal in the Sabres' 4-3 victory",
											"duration": "05:00",
											"authFlow": false,
											"mediaPlaybackId": "4814767",
											"mediaState": "MEDIA_ARCHIVE",
											"keywords": [
												{
													"type": "shareable",
													"value": "Y",
													"displayName": "Y"
												},
												{
													"type": "embeddable",
													"value": "Y",
													"displayName": "Y"
												},
												{
													"type": "content",
													"value": "gameRecap",
													"displayName": "game recap"
												},
												{
													"type": "teamId",
													"value": "7",
													"displayName": "7"
												},
												{
													"type": "content",
													"value": "teamRecap",
													"displayName": "Team Recap"
												},
												{
													"type": "language",
													"value": "en",
													"displayName": "English"
												}
											],
											"image": {
												"title": "",
												"altText": "",
												"cuts": {
													"1136x640": {
														"aspectRatio": "16:9",
														"width": 1136,
														"height": 640,
														"src": "https://nhl.bamcontent.com/images/photos/312511840/1136x640/cut.jpg",
														"at2x": "https://nhl.bamcontent.com/images/photos/312511840/1136x640/cut.jpg",
														"at3x": "https://nhl.bamcontent.com/images/photos/312511840/1136x640/cut.jpg"
													},
													"1024x576": {
														"aspectRatio": "16:9",
														"width": 1024,
														"height": 576,
														"src": "https://nhl.bamcontent.com/images/photos/312511840/1024x576/cut.jpg",
														"at2x": "https://nhl.bamcontent.com/images/photos/312511840/1024x576/cut.jpg",
														"at3x": "https://nhl.bamcontent.com/images/photos/312511840/1024x576/cut.jpg"
													},
													"960x540": {
														"aspectRatio": "16:9",
														"width": 960,
														"height": 540,
														"src": "https://nhl.bamcontent.com/images/photos/312511840/960x540/cut.jpg",
														"at2x": "https://nhl.bamcontent.com/images/photos/312511840/960x540/cut.jpg",
														"at3x": "https://nhl.bamcontent.com/images/photos/312511840/960x540/cut.jpg"
													},
													"768x432": {
														"aspectRatio": "16:9",
														"width": 768,
														"height": 432,
														"src": "https://nhl.bamcontent.com/images/photos/312511840/768x432/cut.jpg",
														"at2x": "https://nhl.bamcontent.com/images/photos/312511840/768x432/cut.jpg",
														"at3x": "https://nhl.bamcontent.com/images/photos/312511840/768x432/cut.jpg"
													},
													"640x360": {
														"aspectRatio": "16:9",
														"width": 640,
														"height": 360,
														"src": "https://nhl.bamcontent.com/images/photos/312511840/640x360/cut.jpg",
														"at2x": "https://nhl.bamcontent.com/images/photos/312511840/640x360/cut.jpg",
														"at3x": "https://nhl.bamcontent.com/images/photos/312511840/640x360/cut.jpg"
													},
													"568x320": {
														"aspectRatio": "16:9",
														"width": 568,
														"height": 320,
														"src": "https://nhl.bamcontent.com/images/photos/312511840/568x320/cut.jpg",
														"at2x": "https://nhl.bamcontent.com/images/photos/312511840/1136x640/cut.jpg",
														"at3x": "https://nhl.bamcontent.com/images/photos/312511840/568x320/cut.jpg"
													},
													"372x210": {
														"aspectRatio": "16:9",
														"width": 372,
														"height": 210,
														"src": "https://nhl.bamcontent.com/images/photos/312511840/372x210/cut.jpg",
														"at2x": "https://nhl.bamcontent.com/images/photos/312511840/372x210/cut.jpg",
														"at3x": "https://nhl.bamcontent.com/images/photos/312511840/372x210/cut.jpg"
													},
													"320x180": {
														"aspectRatio": "16:9",
														"width": 320,
														"height": 180,
														"src": "https://nhl.bamcontent.com/images/photos/312511840/320x180/cut.jpg",
														"at2x": "https://nhl.bamcontent.com/images/photos/312511840/640x360/cut.jpg",
														"at3x": "https://nhl.bamcontent.com/images/photos/312511840/960x540/cut.jpg"
													},
													"248x140": {
														"aspectRatio": "16:9",
														"width": 248,
														"height": 140,
														"src": "https://nhl.bamcontent.com/images/photos/312511840/248x140/cut.jpg",
														"at2x": "https://nhl.bamcontent.com/images/photos/312511840/248x140/cut.jpg",
														"at3x": "https://nhl.bamcontent.com/images/photos/312511840/248x140/cut.jpg"
													},
													"124x70": {
														"aspectRatio": "16:9",
														"width": 124,
														"height": 70,
														"src": "https://nhl.bamcontent.com/images/photos/312511840/124x70/cut.jpg",
														"at2x": "https://nhl.bamcontent.com/images/photos/312511840/248x140/cut.jpg",
														"at3x": "https://nhl.bamcontent.com/images/photos/312511840/372x210/cut.jpg"
													}
												}
											},
											"playbacks": [
												{
													"name": "FLASH_192K_320X180",
													"width": "320",
													"height": "180",
													"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/107413ae-1b2a-4691-9de1-2c151db2bc5d.mp4"
												},
												{
													"name": "FLASH_450K_384x216",
													"width": null,
													"height": null,
													"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/66af3e16-18f6-4463-80fe-e274592167cf.mp4"
												},
												{
													"name": "FLASH_1200K_640X360",
													"width": "640",
													"height": "360",
													"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/1907ca94-983b-41e4-97ed-ebe81f142f2d.mp4"
												},
												{
													"name": "FLASH_1800K_896x504",
													"width": null,
													"height": null,
													"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/fdcad323-3d21-45b1-86ec-ad2bcb6e2f85.mp4"
												},
												{
													"name": "HTTP_CLOUD_MOBILE",
													"width": "null",
													"height": "null",
													"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/4746296/MasterMobile.m3u8"
												},
												{
													"name": "HTTP_CLOUD_TABLET",
													"width": "null",
													"height": "null",
													"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/4746296/MasterTablet.m3u8"
												},
												{
													"name": "HTTP_CLOUD_TABLET_60",
													"width": null,
													"height": null,
													"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/4746296/MasterTablet60.m3u8"
												},
												{
													"name": "HTTP_CLOUD_WIRED",
													"width": "null",
													"height": "null",
													"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/4746296/MasterWired.m3u8"
												},
												{
													"name": "HTTP_CLOUD_WIRED_60",
													"width": null,
													"height": null,
													"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/4746296/MasterWired60.m3u8"
												},
												{
													"name": "HTTP_CLOUD_WIRED_WEB",
													"width": null,
													"height": null,
													"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/4746296/MasterWiredWeb.m3u8"
												}
											]
										}
									]
								},
								{
									"title": "Power Play",
									"items": []
								}
							]
						},
						"highlights": {}
					}
				}
			]
		}
	]
}
''';

const String scheduleEmptyResp = '''
{
"copyright": "NHL and the NHL Shield are registered trademarks of the National Hockey League. NHL and NHL team marks are the property of the NHL and its teams. © NHL 2020. All Rights Reserved.",
"totalItems": 0,
"totalEvents": 0,
"totalGames": 0,
"totalMatches": 0,
"wait": 10,
"dates": []
}
''';

const String gameFinalResp = '''
{
"copyright": "NHL and the NHL Shield are registered trademarks of the National Hockey League. NHL and NHL team marks are the property of the NHL and its teams. © NHL 2020. All Rights Reserved.",
"gamePk": 2019021079,
"link": "/api/v1/game/2019021079/feed/live",
"metaData": {
"wait": 10,
"timeStamp": "20200315_185725"
},
"gameData": {
"game": {
"pk": 2019021079,
"season": "20192020",
"type": "R"
},
"datetime": {
"dateTime": "2020-03-12T00:00:00Z",
"endDateTime": "2020-03-12T02:31:02Z"
},
"status": {
"abstractGameState": "Final",
"codedGameState": "7",
"detailedState": "Final",
"statusCode": "7",
"startTimeTBD": false
},
"teams": {
"away": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"venue": {
"name": "SAP Center at San Jose",
"link": "/api/v1/venues/null",
"city": "San Jose",
"timeZone": {
"id": "America/Los_Angeles",
"offset": -7,
"tz": "PDT"
}
},
"abbreviation": "SJS",
"triCode": "SJS",
"teamName": "Sharks",
"locationName": "San Jose",
"firstYearOfPlay": "1991",
"division": {
"id": 15,
"name": "Pacific",
"nameShort": "PAC",
"link": "/api/v1/divisions/15",
"abbreviation": "P"
},
"conference": {
"id": 5,
"name": "Western",
"link": "/api/v1/conferences/5"
},
"franchise": {
"franchiseId": 29,
"teamName": "Sharks",
"link": "/api/v1/franchises/29"
},
"shortName": "San Jose",
"officialSiteUrl": "http://www.sjsharks.com/",
"franchiseId": 29,
"active": true
},
"home": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"venue": {
"id": 5092,
"name": "United Center",
"link": "/api/v1/venues/5092",
"city": "Chicago",
"timeZone": {
"id": "America/Chicago",
"offset": -5,
"tz": "CDT"
}
},
"abbreviation": "CHI",
"triCode": "CHI",
"teamName": "Blackhawks",
"locationName": "Chicago",
"firstYearOfPlay": "1926",
"division": {
"id": 16,
"name": "Central",
"nameShort": "CEN",
"link": "/api/v1/divisions/16",
"abbreviation": "C"
},
"conference": {
"id": 5,
"name": "Western",
"link": "/api/v1/conferences/5"
},
"franchise": {
"franchiseId": 11,
"teamName": "Blackhawks",
"link": "/api/v1/franchises/11"
},
"shortName": "Chicago",
"officialSiteUrl": "http://www.chicagoblackhawks.com/",
"franchiseId": 11,
"active": true
}
},
"players": {
"ID8475834": {
"id": 8475834,
"fullName": "Marcus Sorensen",
"link": "/api/v1/people/8475834",
"firstName": "Marcus",
"lastName": "Sorensen",
"primaryNumber": "20",
"birthDate": "1992-04-07",
"currentAge": 28,
"birthCity": "Sodertalje",
"birthCountry": "SWE",
"nationality": "SWE",
"height": "5' 11",
"weight": 175,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
},
"primaryPosition": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
}
},
"ID8476886": {
"id": 8476886,
"fullName": "Slater Koekkoek",
"link": "/api/v1/people/8476886",
"firstName": "Slater",
"lastName": "Koekkoek",
"primaryNumber": "68",
"birthDate": "1994-02-18",
"currentAge": 26,
"birthCity": "Winchester",
"birthStateProvince": "ON",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 2",
"weight": 193,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
"ID8470645": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645",
"firstName": "Corey",
"lastName": "Crawford",
"primaryNumber": "50",
"birthDate": "1984-12-31",
"currentAge": 35,
"birthCity": "Montreal",
"birthStateProvince": "QC",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 2",
"weight": 216,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
},
"primaryPosition": {
"code": "G",
"name": "Goalie",
"type": "Goalie",
"abbreviation": "G"
}
},
"ID8480965": {
"id": 8480965,
"fullName": "Antti Suomela",
"link": "/api/v1/people/8480965",
"firstName": "Antti",
"lastName": "Suomela",
"primaryNumber": "40",
"birthDate": "1994-03-17",
"currentAge": 26,
"birthCity": "Espoo",
"birthCountry": "FIN",
"nationality": "FIN",
"height": "6' 0",
"weight": 180,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
"ID8481812": {
"id": 8481812,
"fullName": "Nikolai Knyzhov",
"link": "/api/v1/people/8481812",
"firstName": "Nikolai",
"lastName": "Knyzhov",
"primaryNumber": "71",
"birthDate": "1998-03-20",
"currentAge": 22,
"birthCity": "Kemerovo",
"birthCountry": "RUS",
"nationality": "RUS",
"height": "6' 2",
"weight": 194,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "L",
"rosterStatus": "N",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
"ID8474053": {
"id": 8474053,
"fullName": "Logan Couture",
"link": "/api/v1/people/8474053",
"firstName": "Logan",
"lastName": "Couture",
"primaryNumber": "39",
"birthDate": "1989-03-28",
"currentAge": 31,
"birthCity": "Guelph",
"birthStateProvince": "ON",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 1",
"weight": 200,
"active": true,
"alternateCaptain": false,
"captain": true,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
"ID8478136": {
"id": 8478136,
"fullName": "Jacob Middleton",
"link": "/api/v1/people/8478136",
"firstName": "Jacob",
"lastName": "Middleton",
"primaryNumber": "67",
"birthDate": "1996-01-02",
"currentAge": 24,
"birthCity": "Wainwright",
"birthStateProvince": "AB",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 3",
"weight": 210,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
"ID8478414": {
"id": 8478414,
"fullName": "Timo Meier",
"link": "/api/v1/people/8478414",
"firstName": "Timo",
"lastName": "Meier",
"primaryNumber": "28",
"birthDate": "1996-10-08",
"currentAge": 23,
"birthCity": "Herisau",
"birthCountry": "CHE",
"nationality": "CHE",
"height": "6' 0",
"weight": 210,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
},
"primaryPosition": {
"code": "R",
"name": "Right Wing",
"type": "Forward",
"abbreviation": "RW"
}
},
"ID8481516": {
"id": 8481516,
"fullName": "Joel Kellman",
"link": "/api/v1/people/8481516",
"firstName": "Joel",
"lastName": "Kellman",
"primaryNumber": "46",
"birthDate": "1994-05-25",
"currentAge": 26,
"birthCity": "Karlskrona",
"birthCountry": "SWE",
"nationality": "SWE",
"height": "5' 11",
"weight": 192,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
"ID8479423": {
"id": 8479423,
"fullName": "Alex Nylander",
"link": "/api/v1/people/8479423",
"firstName": "Alex",
"lastName": "Nylander",
"primaryNumber": "92",
"birthDate": "1998-03-02",
"currentAge": 22,
"birthCity": "Calgary",
"birthStateProvince": "AB",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 1",
"weight": 192,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "R",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
},
"primaryPosition": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
}
},
"ID8474250": {
"id": 8474250,
"fullName": "Zack Smith",
"link": "/api/v1/people/8474250",
"firstName": "Zack",
"lastName": "Smith",
"primaryNumber": "15",
"birthDate": "1988-04-05",
"currentAge": 32,
"birthCity": "Maple Creek",
"birthStateProvince": "SK",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 2",
"weight": 208,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
"ID8475169": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169",
"firstName": "Evander",
"lastName": "Kane",
"primaryNumber": "9",
"birthDate": "1991-08-02",
"currentAge": 28,
"birthCity": "Vancouver",
"birthStateProvince": "BC",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 2",
"weight": 210,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
},
"primaryPosition": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
}
},
"ID8476874": {
"id": 8476874,
"fullName": "Olli Maatta",
"link": "/api/v1/people/8476874",
"firstName": "Olli",
"lastName": "Maatta",
"primaryNumber": "6",
"birthDate": "1994-08-22",
"currentAge": 25,
"birthCity": "Jyväskylä",
"birthCountry": "FIN",
"nationality": "FIN",
"height": "6' 2",
"weight": 206,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
"ID8479523": {
"id": 8479523,
"fullName": "Lucas Carlsson",
"link": "/api/v1/people/8479523",
"firstName": "Lucas",
"lastName": "Carlsson",
"primaryNumber": "46",
"birthDate": "1997-07-05",
"currentAge": 22,
"birthCity": "Gävle",
"birthCountry": "SWE",
"nationality": "SWE",
"height": "6' 0",
"weight": 189,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
"ID8479542": {
"id": 8479542,
"fullName": "Brandon Hagel",
"link": "/api/v1/people/8479542",
"firstName": "Brandon",
"lastName": "Hagel",
"primaryNumber": "38",
"birthDate": "1998-08-27",
"currentAge": 21,
"birthCity": "Saskatoon",
"birthStateProvince": "SK",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "5' 11",
"weight": 174,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
},
"primaryPosition": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
}
},
"ID8476372": {
"id": 8476372,
"fullName": "Nick Seeler",
"link": "/api/v1/people/8476372",
"firstName": "Nick",
"lastName": "Seeler",
"primaryNumber": "55",
"birthDate": "1993-06-03",
"currentAge": 27,
"birthCity": "Eden Prairie",
"birthStateProvince": "MN",
"birthCountry": "USA",
"nationality": "USA",
"height": "6' 2",
"weight": 201,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
"ID8479465": {
"id": 8479465,
"fullName": "Drake Caggiula",
"link": "/api/v1/people/8479465",
"firstName": "Drake",
"lastName": "Caggiula",
"primaryNumber": "91",
"birthDate": "1994-06-20",
"currentAge": 26,
"birthCity": "Pickering",
"birthStateProvince": "ON",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "5' 10",
"weight": 176,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
"ID8478099": {
"id": 8478099,
"fullName": "Kevin Labanc",
"link": "/api/v1/people/8478099",
"firstName": "Kevin",
"lastName": "Labanc",
"primaryNumber": "62",
"birthDate": "1995-12-12",
"currentAge": 24,
"birthCity": "Brooklyn",
"birthStateProvince": "NY",
"birthCountry": "USA",
"nationality": "USA",
"height": "5' 11",
"weight": 185,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "R",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
},
"primaryPosition": {
"code": "R",
"name": "Right Wing",
"type": "Forward",
"abbreviation": "RW"
}
},
"ID8479983": {
"id": 8479983,
"fullName": "Mario Ferraro",
"link": "/api/v1/people/8479983",
"firstName": "Mario",
"lastName": "Ferraro",
"primaryNumber": "38",
"birthDate": "1998-09-17",
"currentAge": 21,
"birthCity": "Toronto",
"birthStateProvince": "ON",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "5' 11",
"weight": 185,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
"ID8476473": {
"id": 8476473,
"fullName": "Connor Murphy",
"link": "/api/v1/people/8476473",
"firstName": "Connor",
"lastName": "Murphy",
"primaryNumber": "5",
"birthDate": "1993-03-26",
"currentAge": 27,
"birthCity": "Dublin",
"birthStateProvince": "OH",
"birthCountry": "USA",
"nationality": "USA",
"height": "6' 4",
"weight": 212,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "R",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
"ID8476474": {
"id": 8476474,
"fullName": "Stefan Noesen",
"link": "/api/v1/people/8476474",
"firstName": "Stefan",
"lastName": "Noesen",
"primaryNumber": "11",
"birthDate": "1993-02-12",
"currentAge": 27,
"birthCity": "Plano",
"birthStateProvince": "TX",
"birthCountry": "USA",
"nationality": "USA",
"height": "6' 1",
"weight": 205,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "R",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
},
"primaryPosition": {
"code": "R",
"name": "Right Wing",
"type": "Forward",
"abbreviation": "RW"
}
},
"ID8480384": {
"id": 8480384,
"fullName": "Alexander True",
"link": "/api/v1/people/8480384",
"firstName": "Alexander",
"lastName": "True",
"primaryNumber": "70",
"birthDate": "1997-07-17",
"currentAge": 22,
"birthCity": "Copenhagen",
"birthCountry": "DNK",
"nationality": "DNK",
"height": "6' 5",
"weight": 200,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
"ID8479580": {
"id": 8479580,
"fullName": "Dylan Gambrell",
"link": "/api/v1/people/8479580",
"firstName": "Dylan",
"lastName": "Gambrell",
"primaryNumber": "7",
"birthDate": "1996-08-26",
"currentAge": 23,
"birthCity": "Bonney Lake",
"birthStateProvince": "WA",
"birthCountry": "USA",
"nationality": "USA",
"height": "6' 0",
"weight": 185,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "R",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
"ID8480144": {
"id": 8480144,
"fullName": "David Kampf",
"link": "/api/v1/people/8480144",
"firstName": "David",
"lastName": "Kampf",
"primaryNumber": "64",
"birthDate": "1995-01-12",
"currentAge": 25,
"birthCity": "Chomutov",
"birthCountry": "CZE",
"nationality": "CZE",
"height": "6' 2",
"weight": 188,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
"ID8477180": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180",
"firstName": "Aaron",
"lastName": "Dell",
"primaryNumber": "30",
"birthDate": "1989-05-04",
"currentAge": 31,
"birthCity": "Airdrie",
"birthStateProvince": "AB",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 0",
"weight": 205,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
},
"primaryPosition": {
"code": "G",
"name": "Goalie",
"type": "Goalie",
"abbreviation": "G"
}
},
"ID8466138": {
"id": 8466138,
"fullName": "Joe Thornton",
"link": "/api/v1/people/8466138",
"firstName": "Joe",
"lastName": "Thornton",
"primaryNumber": "19",
"birthDate": "1979-07-02",
"currentAge": 40,
"birthCity": "London",
"birthStateProvince": "ON",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 4",
"weight": 220,
"active": true,
"alternateCaptain": true,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
"ID8470613": {
"id": 8470613,
"fullName": "Brent Burns",
"link": "/api/v1/people/8470613",
"firstName": "Brent",
"lastName": "Burns",
"primaryNumber": "88",
"birthDate": "1985-03-09",
"currentAge": 35,
"birthCity": "Barrie",
"birthStateProvince": "ON",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 5",
"weight": 230,
"active": true,
"alternateCaptain": true,
"captain": false,
"rookie": false,
"shootsCatches": "R",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
"ID8480160": {
"id": 8480160,
"fullName": "Radim Simek",
"link": "/api/v1/people/8480160",
"firstName": "Radim",
"lastName": "Simek",
"primaryNumber": "51",
"birthDate": "1992-09-20",
"currentAge": 27,
"birthCity": "Mlada Boleslav",
"birthCountry": "CZE",
"nationality": "CZE",
"height": "5' 11",
"weight": 200,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
"ID8471709": {
"id": 8471709,
"fullName": "Marc-Edouard Vlasic",
"link": "/api/v1/people/8471709",
"firstName": "Marc-Edouard",
"lastName": "Vlasic",
"primaryNumber": "44",
"birthDate": "1987-03-30",
"currentAge": 33,
"birthCity": "Montreal",
"birthStateProvince": "QC",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 1",
"weight": 205,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
"ID8480084": {
"id": 8480084,
"fullName": "Nick DeSimone",
"link": "/api/v1/people/8480084",
"firstName": "Nick",
"lastName": "DeSimone",
"primaryNumber": "57",
"birthDate": "1994-11-21",
"currentAge": 25,
"birthCity": "East Amherst",
"birthStateProvince": "NY",
"birthCountry": "USA",
"nationality": "USA",
"height": "6' 2",
"weight": 185,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "R",
"rosterStatus": "N",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
"ID8475869": {
"id": 8475869,
"fullName": "Brandon Davidson",
"link": "/api/v1/people/8475869",
"firstName": "Brandon",
"lastName": "Davidson",
"primaryNumber": "21",
"birthDate": "1991-08-21",
"currentAge": 28,
"birthCity": "Taber",
"birthStateProvince": "AB",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 2",
"weight": 208,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
"ID8475841": {
"id": 8475841,
"fullName": "Tim Heed",
"link": "/api/v1/people/8475841",
"firstName": "Tim",
"lastName": "Heed",
"primaryNumber": "72",
"birthDate": "1991-01-27",
"currentAge": 29,
"birthCity": "Gothenburg",
"birthCountry": "SWE",
"nationality": "SWE",
"height": "5' 11",
"weight": 180,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "R",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
"ID8473604": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604",
"firstName": "Jonathan",
"lastName": "Toews",
"primaryNumber": "19",
"birthDate": "1988-04-29",
"currentAge": 32,
"birthCity": "Winnipeg",
"birthStateProvince": "MB",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 2",
"weight": 201,
"active": true,
"alternateCaptain": false,
"captain": true,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
"ID8477846": {
"id": 8477846,
"fullName": "Ryan Carpenter",
"link": "/api/v1/people/8477846",
"firstName": "Ryan",
"lastName": "Carpenter",
"primaryNumber": "22",
"birthDate": "1991-01-18",
"currentAge": 29,
"birthCity": "Oviedo",
"birthStateProvince": "FL",
"birthCountry": "USA",
"nationality": "USA",
"height": "6' 0",
"weight": 200,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "R",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
"ID8477922": {
"id": 8477922,
"fullName": "Melker Karlsson",
"link": "/api/v1/people/8477922",
"firstName": "Melker",
"lastName": "Karlsson",
"primaryNumber": "68",
"birthDate": "1990-07-18",
"currentAge": 29,
"birthCity": "Lycksele",
"birthCountry": "SWE",
"nationality": "SWE",
"height": "6' 0",
"weight": 180,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "R",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
"ID8476438": {
"id": 8476438,
"fullName": "Brandon Saad",
"link": "/api/v1/people/8476438",
"firstName": "Brandon",
"lastName": "Saad",
"primaryNumber": "20",
"birthDate": "1992-10-27",
"currentAge": 27,
"birthCity": "Pittsburgh",
"birthStateProvince": "PA",
"birthCountry": "USA",
"nationality": "USA",
"height": "6' 1",
"weight": 206,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
},
"primaryPosition": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
}
},
"ID8479337": {
"id": 8479337,
"fullName": "Alex DeBrincat",
"link": "/api/v1/people/8479337",
"firstName": "Alex",
"lastName": "DeBrincat",
"primaryNumber": "12",
"birthDate": "1997-12-18",
"currentAge": 22,
"birthCity": "Farmington Hills",
"birthStateProvince": "MI",
"birthCountry": "USA",
"nationality": "USA",
"height": "5' 7",
"weight": 165,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "R",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
},
"primaryPosition": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
}
},
"ID8470281": {
"id": 8470281,
"fullName": "Duncan Keith",
"link": "/api/v1/people/8470281",
"firstName": "Duncan",
"lastName": "Keith",
"primaryNumber": "2",
"birthDate": "1983-07-16",
"currentAge": 36,
"birthCity": "Winnipeg",
"birthStateProvince": "MB",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 1",
"weight": 192,
"active": true,
"alternateCaptain": true,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
"ID8474141": {
"id": 8474141,
"fullName": "Patrick Kane",
"link": "/api/v1/people/8474141",
"firstName": "Patrick",
"lastName": "Kane",
"primaryNumber": "88",
"birthDate": "1988-11-19",
"currentAge": 31,
"birthCity": "Buffalo",
"birthStateProvince": "NY",
"birthCountry": "USA",
"nationality": "USA",
"height": "5' 10",
"weight": 177,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
},
"primaryPosition": {
"code": "R",
"name": "Right Wing",
"type": "Forward",
"abbreviation": "RW"
}
},
"ID8477330": {
"id": 8477330,
"fullName": "Dominik Kubalik",
"link": "/api/v1/people/8477330",
"firstName": "Dominik",
"lastName": "Kubalik",
"primaryNumber": "8",
"birthDate": "1995-08-21",
"currentAge": 24,
"birthCity": "Plzen",
"birthCountry": "CZE",
"nationality": "CZE",
"height": "6' 2",
"weight": 179,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
},
"primaryPosition": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
}
},
"ID8480814": {
"id": 8480814,
"fullName": "Nicolas Beaudin",
"link": "/api/v1/people/8480814",
"firstName": "Nicolas",
"lastName": "Beaudin",
"primaryNumber": "74",
"birthDate": "1999-10-07",
"currentAge": 20,
"birthCity": "Chateauguay",
"birthStateProvince": "QC",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "5' 11",
"weight": 168,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
"ID8478440": {
"id": 8478440,
"fullName": "Dylan Strome",
"link": "/api/v1/people/8478440",
"firstName": "Dylan",
"lastName": "Strome",
"primaryNumber": "17",
"birthDate": "1997-03-07",
"currentAge": 23,
"birthCity": "Mississauga",
"birthStateProvince": "ON",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 3",
"weight": 200,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
"ID8478146": {
"id": 8478146,
"fullName": "Matthew Highmore",
"link": "/api/v1/people/8478146",
"firstName": "Matthew",
"lastName": "Highmore",
"primaryNumber": "36",
"birthDate": "1996-02-27",
"currentAge": 24,
"birthCity": "Halifax",
"birthStateProvince": "NS",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "5' 11",
"weight": 188,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
"ID8481640": {
"id": 8481640,
"fullName": "Lean Bergmann",
"link": "/api/v1/people/8481640",
"firstName": "Lean",
"lastName": "Bergmann",
"primaryNumber": "45",
"birthDate": "1998-10-04",
"currentAge": 21,
"birthCity": "Hemer",
"birthCountry": "DEU",
"nationality": "DEU",
"height": "6' 2",
"weight": 205,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
"ID8479393": {
"id": 8479393,
"fullName": "Noah Gregor",
"link": "/api/v1/people/8479393",
"firstName": "Noah",
"lastName": "Gregor",
"primaryNumber": "73",
"birthDate": "1998-07-28",
"currentAge": 21,
"birthCity": "Beaumont",
"birthStateProvince": "AB",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 0",
"weight": 185,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
"ID8480871": {
"id": 8480871,
"fullName": "Adam Boqvist",
"link": "/api/v1/people/8480871",
"firstName": "Adam",
"lastName": "Boqvist",
"primaryNumber": "27",
"birthDate": "2000-08-15",
"currentAge": 19,
"birthCity": "Falun",
"birthCountry": "SWE",
"nationality": "SWE",
"height": "5' 11",
"weight": 179,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "R",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
"ID8481523": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523",
"firstName": "Kirby",
"lastName": "Dach",
"primaryNumber": "77",
"birthDate": "2001-01-21",
"currentAge": 19,
"birthCity": "Fort Saskatchewan",
"birthStateProvince": "AB",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 4",
"weight": 197,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "R",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
}
},
"venue": {
"id": 5092,
"name": "United Center",
"link": "/api/v1/venues/5092"
}
},
"liveData": {
"plays": {
"allPlays": [
{
"result": {
"event": "Game Scheduled",
"eventCode": "CHI1",
"eventTypeId": "GAME_SCHEDULED",
"description": "Game Scheduled"
},
"about": {
"eventIdx": 0,
"eventId": 1,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "00:00",
"periodTimeRemaining": "20:00",
"dateTime": "2020-03-11T22:25:16Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {}
},
{
"result": {
"event": "Period Ready",
"eventCode": "CHI5",
"eventTypeId": "PERIOD_READY",
"description": "Period Ready"
},
"about": {
"eventIdx": 1,
"eventId": 5,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "00:00",
"periodTimeRemaining": "20:00",
"dateTime": "2020-03-12T00:10:00Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {}
},
{
"result": {
"event": "Period Start",
"eventCode": "CHI8",
"eventTypeId": "PERIOD_START",
"description": "Period Start"
},
"about": {
"eventIdx": 2,
"eventId": 8,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "00:00",
"periodTimeRemaining": "20:00",
"dateTime": "2020-03-12T00:10:45Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8466138,
"fullName": "Joe Thornton",
"link": "/api/v1/people/8466138"
},
"playerType": "Winner"
},
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI9",
"eventTypeId": "FACEOFF",
"description": "Joe Thornton faceoff won against Kirby Dach"
},
"about": {
"eventIdx": 3,
"eventId": 9,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "00:00",
"periodTimeRemaining": "20:00",
"dateTime": "2020-03-12T00:10:45Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 0,
"y": 0
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI51",
"eventTypeId": "STOP",
"description": "Icing"
},
"about": {
"eventIdx": 4,
"eventId": 51,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "00:09",
"periodTimeRemaining": "19:51",
"dateTime": "2020-03-12T00:10:59Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8466138,
"fullName": "Joe Thornton",
"link": "/api/v1/people/8466138"
},
"playerType": "Winner"
},
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI52",
"eventTypeId": "FACEOFF",
"description": "Joe Thornton faceoff won against Kirby Dach"
},
"about": {
"eventIdx": 5,
"eventId": 52,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "00:09",
"periodTimeRemaining": "19:51",
"dateTime": "2020-03-12T00:11:09Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": -69,
"y": 22
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8470281,
"fullName": "Duncan Keith",
"link": "/api/v1/people/8470281"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8478414,
"fullName": "Timo Meier",
"link": "/api/v1/people/8478414"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI10",
"eventTypeId": "BLOCKED_SHOT",
"description": "Timo Meier shot blocked shot by Duncan Keith"
},
"about": {
"eventIdx": 6,
"eventId": 10,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "00:38",
"periodTimeRemaining": "19:22",
"dateTime": "2020-03-12T00:11:48Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 77,
"y": -11
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8470281,
"fullName": "Duncan Keith",
"link": "/api/v1/people/8470281"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Giveaway",
"eventCode": "CHI53",
"eventTypeId": "GIVEAWAY",
"description": "Giveaway by Duncan Keith"
},
"about": {
"eventIdx": 7,
"eventId": 53,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "00:58",
"periodTimeRemaining": "19:02",
"dateTime": "2020-03-12T00:12:08Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 93,
"y": -27
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI11",
"eventTypeId": "SHOT",
"description": "Evander Kane Wrist Shot saved by Corey Crawford",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 8,
"eventId": 11,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "01:04",
"periodTimeRemaining": "18:56",
"dateTime": "2020-03-12T00:12:14Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 81,
"y": -2
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8478099,
"fullName": "Kevin Labanc",
"link": "/api/v1/people/8478099"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Missed Shot",
"eventCode": "CHI12",
"eventTypeId": "MISSED_SHOT",
"description": "Kevin Labanc Wide of Net"
},
"about": {
"eventIdx": 9,
"eventId": 12,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "01:20",
"periodTimeRemaining": "18:40",
"dateTime": "2020-03-12T00:12:32Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 86,
"y": -27
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI13",
"eventTypeId": "SHOT",
"description": "Evander Kane Wrist Shot saved by Corey Crawford",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 10,
"eventId": 13,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "01:21",
"periodTimeRemaining": "18:39",
"dateTime": "2020-03-12T00:12:39Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 84,
"y": -5
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI54",
"eventTypeId": "STOP",
"description": "Goalie Stopped"
},
"about": {
"eventIdx": 11,
"eventId": 54,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "01:22",
"periodTimeRemaining": "18:38",
"dateTime": "2020-03-12T00:12:40Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8478440,
"fullName": "Dylan Strome",
"link": "/api/v1/people/8478440"
},
"playerType": "Winner"
},
{
"player": {
"id": 8481516,
"fullName": "Joel Kellman",
"link": "/api/v1/people/8481516"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI55",
"eventTypeId": "FACEOFF",
"description": "Dylan Strome faceoff won against Joel Kellman"
},
"about": {
"eventIdx": 12,
"eventId": 55,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "01:22",
"periodTimeRemaining": "18:38",
"dateTime": "2020-03-12T00:12:48Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 69,
"y": -22
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8476474,
"fullName": "Stefan Noesen",
"link": "/api/v1/people/8476474"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8476886,
"fullName": "Slater Koekkoek",
"link": "/api/v1/people/8476886"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI56",
"eventTypeId": "HIT",
"description": "Stefan Noesen hit Slater Koekkoek"
},
"about": {
"eventIdx": 13,
"eventId": 56,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "01:26",
"periodTimeRemaining": "18:34",
"dateTime": "2020-03-12T00:13:04Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 86,
"y": -34
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8481516,
"fullName": "Joel Kellman",
"link": "/api/v1/people/8481516"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8478440,
"fullName": "Dylan Strome",
"link": "/api/v1/people/8478440"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI57",
"eventTypeId": "HIT",
"description": "Joel Kellman hit Dylan Strome"
},
"about": {
"eventIdx": 14,
"eventId": 57,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "01:37",
"periodTimeRemaining": "18:23",
"dateTime": "2020-03-12T00:13:14Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": -74,
"y": -39
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8481516,
"fullName": "Joel Kellman",
"link": "/api/v1/people/8481516"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8476886,
"fullName": "Slater Koekkoek",
"link": "/api/v1/people/8476886"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI58",
"eventTypeId": "HIT",
"description": "Joel Kellman hit Slater Koekkoek"
},
"about": {
"eventIdx": 15,
"eventId": 58,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "01:46",
"periodTimeRemaining": "18:14",
"dateTime": "2020-03-12T00:13:24Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 97,
"y": 19
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8470613,
"fullName": "Brent Burns",
"link": "/api/v1/people/8470613"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8479337,
"fullName": "Alex DeBrincat",
"link": "/api/v1/people/8479337"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI59",
"eventTypeId": "HIT",
"description": "Brent Burns hit Alex DeBrincat"
},
"about": {
"eventIdx": 16,
"eventId": 59,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "01:57",
"periodTimeRemaining": "18:03",
"dateTime": "2020-03-12T00:13:35Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": -74,
"y": 2
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8479337,
"fullName": "Alex DeBrincat",
"link": "/api/v1/people/8479337"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI14",
"eventTypeId": "SHOT",
"description": "Alex DeBrincat Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 17,
"eventId": 14,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "02:16",
"periodTimeRemaining": "17:44",
"dateTime": "2020-03-12T00:13:54Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": -67,
"y": 7
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8481640,
"fullName": "Lean Bergmann",
"link": "/api/v1/people/8481640"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8480814,
"fullName": "Nicolas Beaudin",
"link": "/api/v1/people/8480814"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI60",
"eventTypeId": "HIT",
"description": "Lean Bergmann hit Nicolas Beaudin"
},
"about": {
"eventIdx": 18,
"eventId": 60,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "02:23",
"periodTimeRemaining": "17:37",
"dateTime": "2020-03-12T00:14:01Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 82,
"y": 36
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8479523,
"fullName": "Lucas Carlsson",
"link": "/api/v1/people/8479523"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8478414,
"fullName": "Timo Meier",
"link": "/api/v1/people/8478414"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI15",
"eventTypeId": "BLOCKED_SHOT",
"description": "Timo Meier shot blocked shot by Lucas Carlsson"
},
"about": {
"eventIdx": 19,
"eventId": 15,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "02:59",
"periodTimeRemaining": "17:01",
"dateTime": "2020-03-12T00:14:36Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 49,
"y": -15
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8477846,
"fullName": "Ryan Carpenter",
"link": "/api/v1/people/8477846"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Giveaway",
"eventCode": "CHI61",
"eventTypeId": "GIVEAWAY",
"description": "Giveaway by Ryan Carpenter"
},
"about": {
"eventIdx": 20,
"eventId": 61,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "03:10",
"periodTimeRemaining": "16:50",
"dateTime": "2020-03-12T00:14:48Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": -88,
"y": -24
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8478146,
"fullName": "Matthew Highmore",
"link": "/api/v1/people/8478146"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8475841,
"fullName": "Tim Heed",
"link": "/api/v1/people/8475841"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI16",
"eventTypeId": "BLOCKED_SHOT",
"description": "Tim Heed shot blocked shot by Matthew Highmore"
},
"about": {
"eventIdx": 21,
"eventId": 16,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "03:35",
"periodTimeRemaining": "16:25",
"dateTime": "2020-03-12T00:15:13Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 66,
"y": -12
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8476886,
"fullName": "Slater Koekkoek",
"link": "/api/v1/people/8476886"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI17",
"eventTypeId": "SHOT",
"description": "Slater Koekkoek Backhand saved by Aaron Dell",
"secondaryType": "Backhand"
},
"about": {
"eventIdx": 22,
"eventId": 17,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "04:23",
"periodTimeRemaining": "15:37",
"dateTime": "2020-03-12T00:16:02Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": -80,
"y": 20
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI63",
"eventTypeId": "STOP",
"description": "Goalie Stopped"
},
"about": {
"eventIdx": 23,
"eventId": 63,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "04:24",
"periodTimeRemaining": "15:36",
"dateTime": "2020-03-12T00:16:02Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8481516,
"fullName": "Joel Kellman",
"link": "/api/v1/people/8481516"
},
"playerType": "Winner"
},
{
"player": {
"id": 8478440,
"fullName": "Dylan Strome",
"link": "/api/v1/people/8478440"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI64",
"eventTypeId": "FACEOFF",
"description": "Joel Kellman faceoff won against Dylan Strome"
},
"about": {
"eventIdx": 24,
"eventId": 64,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "04:24",
"periodTimeRemaining": "15:36",
"dateTime": "2020-03-12T00:16:25Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": -69,
"y": 22
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8481516,
"fullName": "Joel Kellman",
"link": "/api/v1/people/8481516"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI18",
"eventTypeId": "SHOT",
"description": "Joel Kellman Wrist Shot saved by Corey Crawford",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 25,
"eventId": 18,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "04:35",
"periodTimeRemaining": "15:25",
"dateTime": "2020-03-12T00:16:44Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 58,
"y": -12
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8476474,
"fullName": "Stefan Noesen",
"link": "/api/v1/people/8476474"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI19",
"eventTypeId": "SHOT",
"description": "Stefan Noesen Wrist Shot saved by Corey Crawford",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 26,
"eventId": 19,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "04:39",
"periodTimeRemaining": "15:21",
"dateTime": "2020-03-12T00:16:48Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 74,
"y": 0
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8477922,
"fullName": "Melker Karlsson",
"link": "/api/v1/people/8477922"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Takeaway",
"eventCode": "CHI65",
"eventTypeId": "TAKEAWAY",
"description": "Takeaway by Melker Karlsson"
},
"about": {
"eventIdx": 27,
"eventId": 65,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "04:43",
"periodTimeRemaining": "15:17",
"dateTime": "2020-03-12T00:16:52Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": -15,
"y": -3
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8480814,
"fullName": "Nicolas Beaudin",
"link": "/api/v1/people/8480814"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI20",
"eventTypeId": "SHOT",
"description": "Nicolas Beaudin Slap Shot saved by Aaron Dell",
"secondaryType": "Slap Shot"
},
"about": {
"eventIdx": 28,
"eventId": 20,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "04:47",
"periodTimeRemaining": "15:13",
"dateTime": "2020-03-12T00:16:56Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": -67,
"y": -29
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8480814,
"fullName": "Nicolas Beaudin",
"link": "/api/v1/people/8480814"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI21",
"eventTypeId": "SHOT",
"description": "Nicolas Beaudin Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 29,
"eventId": 21,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "04:52",
"periodTimeRemaining": "15:08",
"dateTime": "2020-03-12T00:17:01Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": -83,
"y": -20
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8477922,
"fullName": "Melker Karlsson",
"link": "/api/v1/people/8477922"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Giveaway",
"eventCode": "CHI66",
"eventTypeId": "GIVEAWAY",
"description": "Giveaway by Melker Karlsson"
},
"about": {
"eventIdx": 30,
"eventId": 66,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "04:54",
"periodTimeRemaining": "15:06",
"dateTime": "2020-03-12T00:17:03Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": -66,
"y": 41
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8476474,
"fullName": "Stefan Noesen",
"link": "/api/v1/people/8476474"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8470281,
"fullName": "Duncan Keith",
"link": "/api/v1/people/8470281"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI22",
"eventTypeId": "BLOCKED_SHOT",
"description": "Duncan Keith shot blocked shot by Stefan Noesen"
},
"about": {
"eventIdx": 31,
"eventId": 22,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "05:02",
"periodTimeRemaining": "14:58",
"dateTime": "2020-03-12T00:17:11Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": -56,
"y": 1
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8479523,
"fullName": "Lucas Carlsson",
"link": "/api/v1/people/8479523"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8478099,
"fullName": "Kevin Labanc",
"link": "/api/v1/people/8478099"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI67",
"eventTypeId": "HIT",
"description": "Lucas Carlsson hit Kevin Labanc"
},
"about": {
"eventIdx": 32,
"eventId": 67,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "05:29",
"periodTimeRemaining": "14:31",
"dateTime": "2020-03-12T00:17:38Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": -81,
"y": -36
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8479393,
"fullName": "Noah Gregor",
"link": "/api/v1/people/8479393"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI23",
"eventTypeId": "SHOT",
"description": "Noah Gregor Wrist Shot saved by Corey Crawford",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 33,
"eventId": 23,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "05:39",
"periodTimeRemaining": "14:21",
"dateTime": "2020-03-12T00:17:48Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 76,
"y": -2
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI68",
"eventTypeId": "STOP",
"description": "Goalie Stopped"
},
"about": {
"eventIdx": 34,
"eventId": 68,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "05:39",
"periodTimeRemaining": "14:21",
"dateTime": "2020-03-12T00:17:50Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604"
},
"playerType": "Winner"
},
{
"player": {
"id": 8479580,
"fullName": "Dylan Gambrell",
"link": "/api/v1/people/8479580"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI69",
"eventTypeId": "FACEOFF",
"description": "Jonathan Toews faceoff won against Dylan Gambrell"
},
"about": {
"eventIdx": 35,
"eventId": 69,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "05:39",
"periodTimeRemaining": "14:21",
"dateTime": "2020-03-12T00:18:21Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 69,
"y": -22
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8479337,
"fullName": "Alex DeBrincat",
"link": "/api/v1/people/8479337"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI24",
"eventTypeId": "SHOT",
"description": "Alex DeBrincat Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 36,
"eventId": 24,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "05:54",
"periodTimeRemaining": "14:06",
"dateTime": "2020-03-12T00:18:40Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": -60,
"y": -35
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8471709,
"fullName": "Marc-Edouard Vlasic",
"link": "/api/v1/people/8471709"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Giveaway",
"eventCode": "CHI70",
"eventTypeId": "GIVEAWAY",
"description": "Giveaway by Marc-Edouard Vlasic"
},
"about": {
"eventIdx": 37,
"eventId": 70,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "05:54",
"periodTimeRemaining": "14:06",
"dateTime": "2020-03-12T00:18:40Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": -73,
"y": -35
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI71",
"eventTypeId": "STOP",
"description": "Goalie Stopped"
},
"about": {
"eventIdx": 38,
"eventId": 71,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "05:54",
"periodTimeRemaining": "14:06",
"dateTime": "2020-03-12T00:18:44Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8480965,
"fullName": "Antti Suomela",
"link": "/api/v1/people/8480965"
},
"playerType": "Winner"
},
{
"player": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI72",
"eventTypeId": "FACEOFF",
"description": "Antti Suomela faceoff won against Jonathan Toews"
},
"about": {
"eventIdx": 39,
"eventId": 72,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "05:54",
"periodTimeRemaining": "14:06",
"dateTime": "2020-03-12T00:18:49Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": -69,
"y": -22
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8470281,
"fullName": "Duncan Keith",
"link": "/api/v1/people/8470281"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Takeaway",
"eventCode": "CHI73",
"eventTypeId": "TAKEAWAY",
"description": "Takeaway by Duncan Keith"
},
"about": {
"eventIdx": 40,
"eventId": 73,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "06:55",
"periodTimeRemaining": "13:05",
"dateTime": "2020-03-12T00:20:08Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 96,
"y": -21
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8475869,
"fullName": "Brandon Davidson",
"link": "/api/v1/people/8475869"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8478146,
"fullName": "Matthew Highmore",
"link": "/api/v1/people/8478146"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI74",
"eventTypeId": "HIT",
"description": "Brandon Davidson hit Matthew Highmore"
},
"about": {
"eventIdx": 41,
"eventId": 74,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "07:07",
"periodTimeRemaining": "12:53",
"dateTime": "2020-03-12T00:20:20Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": -90,
"y": -32
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8479523,
"fullName": "Lucas Carlsson",
"link": "/api/v1/people/8479523"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI25",
"eventTypeId": "SHOT",
"description": "Lucas Carlsson Slap Shot saved by Aaron Dell",
"secondaryType": "Slap Shot"
},
"about": {
"eventIdx": 42,
"eventId": 25,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "07:21",
"periodTimeRemaining": "12:39",
"dateTime": "2020-03-12T00:20:34Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": -68,
"y": -21
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Takeaway",
"eventCode": "CHI75",
"eventTypeId": "TAKEAWAY",
"description": "Takeaway by Kirby Dach"
},
"about": {
"eventIdx": 43,
"eventId": 75,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "07:48",
"periodTimeRemaining": "12:12",
"dateTime": "2020-03-12T00:21:01Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": -50,
"y": 37
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8477330,
"fullName": "Dominik Kubalik",
"link": "/api/v1/people/8477330"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI26",
"eventTypeId": "SHOT",
"description": "Dominik Kubalik Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 44,
"eventId": 26,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "07:49",
"periodTimeRemaining": "12:11",
"dateTime": "2020-03-12T00:21:02Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": -64,
"y": 0
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8480160,
"fullName": "Radim Simek",
"link": "/api/v1/people/8480160"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8476886,
"fullName": "Slater Koekkoek",
"link": "/api/v1/people/8476886"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI27",
"eventTypeId": "BLOCKED_SHOT",
"description": "Slater Koekkoek shot blocked shot by Radim Simek"
},
"about": {
"eventIdx": 45,
"eventId": 27,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "07:56",
"periodTimeRemaining": "12:04",
"dateTime": "2020-03-12T00:21:09Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": -65,
"y": 7
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8474141,
"fullName": "Patrick Kane",
"link": "/api/v1/people/8474141"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI28",
"eventTypeId": "SHOT",
"description": "Patrick Kane Tip-In saved by Aaron Dell",
"secondaryType": "Tip-In"
},
"about": {
"eventIdx": 46,
"eventId": 28,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "08:41",
"periodTimeRemaining": "11:19",
"dateTime": "2020-03-12T00:21:54Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": -70,
"y": 2
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8470613,
"fullName": "Brent Burns",
"link": "/api/v1/people/8470613"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8479423,
"fullName": "Alex Nylander",
"link": "/api/v1/people/8479423"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI77",
"eventTypeId": "HIT",
"description": "Brent Burns hit Alex Nylander"
},
"about": {
"eventIdx": 47,
"eventId": 77,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "08:42",
"periodTimeRemaining": "11:18",
"dateTime": "2020-03-12T00:21:55Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": -88,
"y": -32
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8479423,
"fullName": "Alex Nylander",
"link": "/api/v1/people/8479423"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8475841,
"fullName": "Tim Heed",
"link": "/api/v1/people/8475841"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI78",
"eventTypeId": "HIT",
"description": "Alex Nylander hit Tim Heed"
},
"about": {
"eventIdx": 48,
"eventId": 78,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "08:44",
"periodTimeRemaining": "11:16",
"dateTime": "2020-03-12T00:22:10Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": -98,
"y": -23
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8479393,
"fullName": "Noah Gregor",
"link": "/api/v1/people/8479393"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI30",
"eventTypeId": "SHOT",
"description": "Noah Gregor Wrist Shot saved by Corey Crawford",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 49,
"eventId": 30,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "08:51",
"periodTimeRemaining": "11:09",
"dateTime": "2020-03-12T00:22:18Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 94,
"y": -6
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI29",
"eventTypeId": "SHOT",
"description": "Evander Kane Wrist Shot saved by Corey Crawford",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 50,
"eventId": 29,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "08:52",
"periodTimeRemaining": "11:08",
"dateTime": "2020-03-12T00:22:06Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 81,
"y": -7
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8478099,
"fullName": "Kevin Labanc",
"link": "/api/v1/people/8478099"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI33",
"eventTypeId": "SHOT",
"description": "Kevin Labanc Wrist Shot saved by Corey Crawford",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 51,
"eventId": 33,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "08:53",
"periodTimeRemaining": "11:07",
"dateTime": "2020-03-12T00:22:06Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 84,
"y": -4
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI79",
"eventTypeId": "STOP",
"description": "TV timeout"
},
"about": {
"eventIdx": 52,
"eventId": 79,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "08:55",
"periodTimeRemaining": "11:05",
"dateTime": "2020-03-12T00:22:17Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8478440,
"fullName": "Dylan Strome",
"link": "/api/v1/people/8478440"
},
"playerType": "PenaltyOn"
},
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "DrewBy"
}
],
"result": {
"event": "Penalty",
"eventCode": "CHI31",
"eventTypeId": "PENALTY",
"description": "Dylan Strome Tripping against Evander Kane",
"secondaryType": "Tripping",
"penaltySeverity": "Minor",
"penaltyMinutes": 2
},
"about": {
"eventIdx": 53,
"eventId": 31,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "08:55",
"periodTimeRemaining": "11:05",
"dateTime": "2020-03-12T00:22:31Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 98,
"y": -3
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604"
},
"playerType": "Winner"
},
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI80",
"eventTypeId": "FACEOFF",
"description": "Jonathan Toews faceoff won against Evander Kane"
},
"about": {
"eventIdx": 54,
"eventId": 80,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "08:55",
"periodTimeRemaining": "11:05",
"dateTime": "2020-03-12T00:23:58Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 69,
"y": 22
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8478099,
"fullName": "Kevin Labanc",
"link": "/api/v1/people/8478099"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI34",
"eventTypeId": "SHOT",
"description": "Kevin Labanc Wrist Shot saved by Corey Crawford",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 55,
"eventId": 34,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "09:10",
"periodTimeRemaining": "10:50",
"dateTime": "2020-03-12T00:24:54Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 41,
"y": -21
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8477846,
"fullName": "Ryan Carpenter",
"link": "/api/v1/people/8477846"
},
"playerType": "PenaltyOn"
},
{
"player": {
"id": 8466138,
"fullName": "Joe Thornton",
"link": "/api/v1/people/8466138"
},
"playerType": "DrewBy"
}
],
"result": {
"event": "Penalty",
"eventCode": "CHI35",
"eventTypeId": "PENALTY",
"description": "Ryan Carpenter Hi-sticking against Joe Thornton",
"secondaryType": "Hi-sticking",
"penaltySeverity": "Minor",
"penaltyMinutes": 2
},
"about": {
"eventIdx": 56,
"eventId": 35,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "09:10",
"periodTimeRemaining": "10:50",
"dateTime": "2020-03-12T00:25:07Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 68,
"y": 3
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Winner"
},
{
"player": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI81",
"eventTypeId": "FACEOFF",
"description": "Evander Kane faceoff won against Jonathan Toews"
},
"about": {
"eventIdx": 57,
"eventId": 81,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "09:10",
"periodTimeRemaining": "10:50",
"dateTime": "2020-03-12T00:25:36Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 69,
"y": 22
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8470613,
"fullName": "Brent Burns",
"link": "/api/v1/people/8470613"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI37",
"eventTypeId": "SHOT",
"description": "Brent Burns Slap Shot saved by Corey Crawford",
"secondaryType": "Slap Shot"
},
"about": {
"eventIdx": 58,
"eventId": 37,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "09:18",
"periodTimeRemaining": "10:42",
"dateTime": "2020-03-12T00:26:09Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 42,
"y": -2
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8476473,
"fullName": "Connor Murphy",
"link": "/api/v1/people/8476473"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8470613,
"fullName": "Brent Burns",
"link": "/api/v1/people/8470613"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI38",
"eventTypeId": "BLOCKED_SHOT",
"description": "Brent Burns shot blocked shot by Connor Murphy"
},
"about": {
"eventIdx": 59,
"eventId": 38,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "09:24",
"periodTimeRemaining": "10:36",
"dateTime": "2020-03-12T00:26:14Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 59,
"y": 8
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8476473,
"fullName": "Connor Murphy",
"link": "/api/v1/people/8476473"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8478414,
"fullName": "Timo Meier",
"link": "/api/v1/people/8478414"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI39",
"eventTypeId": "BLOCKED_SHOT",
"description": "Timo Meier shot blocked shot by Connor Murphy"
},
"about": {
"eventIdx": 60,
"eventId": 39,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "09:49",
"periodTimeRemaining": "10:11",
"dateTime": "2020-03-12T00:26:39Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 72,
"y": 6
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8478414,
"fullName": "Timo Meier",
"link": "/api/v1/people/8478414"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI40",
"eventTypeId": "SHOT",
"description": "Timo Meier Slap Shot saved by Corey Crawford",
"secondaryType": "Slap Shot"
},
"about": {
"eventIdx": 61,
"eventId": 40,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "09:56",
"periodTimeRemaining": "10:04",
"dateTime": "2020-03-12T00:26:46Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 40,
"y": -6
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8466138,
"fullName": "Joe Thornton",
"link": "/api/v1/people/8466138"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Missed Shot",
"eventCode": "CHI41",
"eventTypeId": "MISSED_SHOT",
"description": "Joe Thornton Wide of Net"
},
"about": {
"eventIdx": 62,
"eventId": 41,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "10:25",
"periodTimeRemaining": "09:35",
"dateTime": "2020-03-12T00:27:15Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 66,
"y": 19
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8478099,
"fullName": "Kevin Labanc",
"link": "/api/v1/people/8478099"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI42",
"eventTypeId": "SHOT",
"description": "Kevin Labanc Wrist Shot saved by Corey Crawford",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 63,
"eventId": 42,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "10:41",
"periodTimeRemaining": "09:19",
"dateTime": "2020-03-12T00:27:32Z",
"goals": {
"away": 0,
"home": 0
}
},
"coordinates": {
"x": 82,
"y": 15
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Scorer",
"seasonTotal": 26
},
{
"player": {
"id": 8466138,
"fullName": "Joe Thornton",
"link": "/api/v1/people/8466138"
},
"playerType": "Assist",
"seasonTotal": 24
},
{
"player": {
"id": 8478414,
"fullName": "Timo Meier",
"link": "/api/v1/people/8478414"
},
"playerType": "Assist",
"seasonTotal": 27
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Goal",
"eventCode": "CHI43",
"eventTypeId": "GOAL",
"description": "Evander Kane (26) Tip-In, assists: Joe Thornton (24), Timo Meier (27)",
"secondaryType": "Tip-In",
"strength": {
"code": "PPG",
"name": "Power Play"
},
"gameWinningGoal": false,
"emptyNet": false
},
"about": {
"eventIdx": 64,
"eventId": 43,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "10:49",
"periodTimeRemaining": "09:11",
"dateTime": "2020-03-12T00:27:41Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 74,
"y": -1
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8481516,
"fullName": "Joel Kellman",
"link": "/api/v1/people/8481516"
},
"playerType": "Winner"
},
{
"player": {
"id": 8480144,
"fullName": "David Kampf",
"link": "/api/v1/people/8480144"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI82",
"eventTypeId": "FACEOFF",
"description": "Joel Kellman faceoff won against David Kampf"
},
"about": {
"eventIdx": 65,
"eventId": 82,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "10:49",
"periodTimeRemaining": "09:11",
"dateTime": "2020-03-12T00:28:26Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 0,
"y": 0
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8481516,
"fullName": "Joel Kellman",
"link": "/api/v1/people/8481516"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI44",
"eventTypeId": "SHOT",
"description": "Joel Kellman Wrist Shot saved by Corey Crawford",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 66,
"eventId": 44,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "11:00",
"periodTimeRemaining": "09:00",
"dateTime": "2020-03-12T00:28:37Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 55,
"y": 32
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Giveaway",
"eventCode": "CHI83",
"eventTypeId": "GIVEAWAY",
"description": "Giveaway by Corey Crawford"
},
"about": {
"eventIdx": 67,
"eventId": 83,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "11:01",
"periodTimeRemaining": "08:59",
"dateTime": "2020-03-12T00:28:38Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 84,
"y": 0
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8475841,
"fullName": "Tim Heed",
"link": "/api/v1/people/8475841"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Missed Shot",
"eventCode": "CHI45",
"eventTypeId": "MISSED_SHOT",
"description": "Tim Heed Wide of Net"
},
"about": {
"eventIdx": 68,
"eventId": 45,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "11:07",
"periodTimeRemaining": "08:53",
"dateTime": "2020-03-12T00:28:44Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 49,
"y": -31
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8476474,
"fullName": "Stefan Noesen",
"link": "/api/v1/people/8476474"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8476473,
"fullName": "Connor Murphy",
"link": "/api/v1/people/8476473"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI84",
"eventTypeId": "HIT",
"description": "Stefan Noesen hit Connor Murphy"
},
"about": {
"eventIdx": 69,
"eventId": 84,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "11:27",
"periodTimeRemaining": "08:33",
"dateTime": "2020-03-12T00:29:04Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 82,
"y": 38
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8479423,
"fullName": "Alex Nylander",
"link": "/api/v1/people/8479423"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI46",
"eventTypeId": "SHOT",
"description": "Alex Nylander Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 70,
"eventId": 46,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "11:31",
"periodTimeRemaining": "08:29",
"dateTime": "2020-03-12T00:29:09Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -66,
"y": 31
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8481516,
"fullName": "Joel Kellman",
"link": "/api/v1/people/8481516"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Giveaway",
"eventCode": "CHI85",
"eventTypeId": "GIVEAWAY",
"description": "Giveaway by Joel Kellman"
},
"about": {
"eventIdx": 71,
"eventId": 85,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "11:35",
"periodTimeRemaining": "08:25",
"dateTime": "2020-03-12T00:29:23Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 98,
"y": -12
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8481516,
"fullName": "Joel Kellman",
"link": "/api/v1/people/8481516"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8479423,
"fullName": "Alex Nylander",
"link": "/api/v1/people/8479423"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI86",
"eventTypeId": "HIT",
"description": "Joel Kellman hit Alex Nylander"
},
"about": {
"eventIdx": 72,
"eventId": 86,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "11:59",
"periodTimeRemaining": "08:01",
"dateTime": "2020-03-12T00:29:59Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -23,
"y": 41
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8476438,
"fullName": "Brandon Saad",
"link": "/api/v1/people/8476438"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI47",
"eventTypeId": "SHOT",
"description": "Brandon Saad Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 73,
"eventId": 47,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "12:27",
"periodTimeRemaining": "07:33",
"dateTime": "2020-03-12T00:30:04Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -67,
"y": 1
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8476438,
"fullName": "Brandon Saad",
"link": "/api/v1/people/8476438"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Takeaway",
"eventCode": "CHI87",
"eventTypeId": "TAKEAWAY",
"description": "Takeaway by Brandon Saad"
},
"about": {
"eventIdx": 74,
"eventId": 87,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "12:35",
"periodTimeRemaining": "07:25",
"dateTime": "2020-03-12T00:30:12Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -34,
"y": 5
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Missed Shot",
"eventCode": "CHI48",
"eventTypeId": "MISSED_SHOT",
"description": "Jonathan Toews Wide of Net"
},
"about": {
"eventIdx": 75,
"eventId": 48,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "12:41",
"periodTimeRemaining": "07:19",
"dateTime": "2020-03-12T00:30:18Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -78,
"y": 11
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8476886,
"fullName": "Slater Koekkoek",
"link": "/api/v1/people/8476886"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Missed Shot",
"eventCode": "CHI49",
"eventTypeId": "MISSED_SHOT",
"description": "Slater Koekkoek Wide of Net"
},
"about": {
"eventIdx": 76,
"eventId": 49,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "12:50",
"periodTimeRemaining": "07:10",
"dateTime": "2020-03-12T00:30:27Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -37,
"y": 22
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8480160,
"fullName": "Radim Simek",
"link": "/api/v1/people/8480160"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI50",
"eventTypeId": "BLOCKED_SHOT",
"description": "Jonathan Toews shot blocked shot by Radim Simek"
},
"about": {
"eventIdx": 77,
"eventId": 50,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "12:55",
"periodTimeRemaining": "07:05",
"dateTime": "2020-03-12T00:30:32Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -73,
"y": 2
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI88",
"eventTypeId": "STOP",
"description": "Icing"
},
"about": {
"eventIdx": 78,
"eventId": 88,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "12:58",
"periodTimeRemaining": "07:02",
"dateTime": "2020-03-12T00:30:36Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8479580,
"fullName": "Dylan Gambrell",
"link": "/api/v1/people/8479580"
},
"playerType": "Winner"
},
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI89",
"eventTypeId": "FACEOFF",
"description": "Dylan Gambrell faceoff won against Kirby Dach"
},
"about": {
"eventIdx": 79,
"eventId": 89,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "12:58",
"periodTimeRemaining": "07:02",
"dateTime": "2020-03-12T00:30:49Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -69,
"y": 22
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8475869,
"fullName": "Brandon Davidson",
"link": "/api/v1/people/8475869"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Giveaway",
"eventCode": "CHI90",
"eventTypeId": "GIVEAWAY",
"description": "Giveaway by Brandon Davidson"
},
"about": {
"eventIdx": 80,
"eventId": 90,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "13:05",
"periodTimeRemaining": "06:55",
"dateTime": "2020-03-12T00:31:05Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -74,
"y": 37
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8476473,
"fullName": "Connor Murphy",
"link": "/api/v1/people/8476473"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI201",
"eventTypeId": "SHOT",
"description": "Connor Murphy Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 81,
"eventId": 201,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "13:31",
"periodTimeRemaining": "06:29",
"dateTime": "2020-03-12T00:31:31Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -40,
"y": -1
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI91",
"eventTypeId": "STOP",
"description": "Puck in Netting"
},
"about": {
"eventIdx": 82,
"eventId": 91,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "13:32",
"periodTimeRemaining": "06:28",
"dateTime": "2020-03-12T00:31:33Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8466138,
"fullName": "Joe Thornton",
"link": "/api/v1/people/8466138"
},
"playerType": "Winner"
},
{
"player": {
"id": 8477846,
"fullName": "Ryan Carpenter",
"link": "/api/v1/people/8477846"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI92",
"eventTypeId": "FACEOFF",
"description": "Joe Thornton faceoff won against Ryan Carpenter"
},
"about": {
"eventIdx": 83,
"eventId": 92,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "13:32",
"periodTimeRemaining": "06:28",
"dateTime": "2020-03-12T00:33:33Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -69,
"y": 22
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8470613,
"fullName": "Brent Burns",
"link": "/api/v1/people/8470613"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Giveaway",
"eventCode": "CHI93",
"eventTypeId": "GIVEAWAY",
"description": "Giveaway by Brent Burns"
},
"about": {
"eventIdx": 84,
"eventId": 93,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "13:44",
"periodTimeRemaining": "06:16",
"dateTime": "2020-03-12T00:33:55Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -90,
"y": -33
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8477846,
"fullName": "Ryan Carpenter",
"link": "/api/v1/people/8477846"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8481812,
"fullName": "Nikolai Knyzhov",
"link": "/api/v1/people/8481812"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI94",
"eventTypeId": "HIT",
"description": "Ryan Carpenter hit Nikolai Knyzhov"
},
"about": {
"eventIdx": 85,
"eventId": 94,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "14:17",
"periodTimeRemaining": "05:43",
"dateTime": "2020-03-12T00:34:28Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -94,
"y": 29
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI95",
"eventTypeId": "STOP",
"description": "Icing"
},
"about": {
"eventIdx": 86,
"eventId": 95,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "14:41",
"periodTimeRemaining": "05:19",
"dateTime": "2020-03-12T00:34:53Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8478440,
"fullName": "Dylan Strome",
"link": "/api/v1/people/8478440"
},
"playerType": "Winner"
},
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI96",
"eventTypeId": "FACEOFF",
"description": "Dylan Strome faceoff won against Evander Kane"
},
"about": {
"eventIdx": 87,
"eventId": 96,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "14:41",
"periodTimeRemaining": "05:19",
"dateTime": "2020-03-12T00:35:02Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 69,
"y": 22
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8479393,
"fullName": "Noah Gregor",
"link": "/api/v1/people/8479393"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8476874,
"fullName": "Olli Maatta",
"link": "/api/v1/people/8476874"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI97",
"eventTypeId": "HIT",
"description": "Noah Gregor hit Olli Maatta"
},
"about": {
"eventIdx": 88,
"eventId": 97,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "14:48",
"periodTimeRemaining": "05:12",
"dateTime": "2020-03-12T00:35:25Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 67,
"y": -41
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8474141,
"fullName": "Patrick Kane",
"link": "/api/v1/people/8474141"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI202",
"eventTypeId": "SHOT",
"description": "Patrick Kane Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 89,
"eventId": 202,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "15:01",
"periodTimeRemaining": "04:59",
"dateTime": "2020-03-12T00:35:38Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -64,
"y": -25
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8479523,
"fullName": "Lucas Carlsson",
"link": "/api/v1/people/8479523"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI98",
"eventTypeId": "HIT",
"description": "Lucas Carlsson hit Evander Kane"
},
"about": {
"eventIdx": 90,
"eventId": 98,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "15:11",
"periodTimeRemaining": "04:49",
"dateTime": "2020-03-12T00:35:48Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 84,
"y": 36
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8476473,
"fullName": "Connor Murphy",
"link": "/api/v1/people/8476473"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8478099,
"fullName": "Kevin Labanc",
"link": "/api/v1/people/8478099"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI203",
"eventTypeId": "BLOCKED_SHOT",
"description": "Kevin Labanc shot blocked shot by Connor Murphy"
},
"about": {
"eventIdx": 91,
"eventId": 203,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "15:18",
"periodTimeRemaining": "04:42",
"dateTime": "2020-03-12T00:35:55Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 81,
"y": -19
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI99",
"eventTypeId": "STOP",
"description": "Puck in Netting"
},
"about": {
"eventIdx": 92,
"eventId": 99,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "15:18",
"periodTimeRemaining": "04:42",
"dateTime": "2020-03-12T00:35:56Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604"
},
"playerType": "Winner"
},
{
"player": {
"id": 8481516,
"fullName": "Joel Kellman",
"link": "/api/v1/people/8481516"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI100",
"eventTypeId": "FACEOFF",
"description": "Jonathan Toews faceoff won against Joel Kellman"
},
"about": {
"eventIdx": 93,
"eventId": 100,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "15:18",
"periodTimeRemaining": "04:42",
"dateTime": "2020-03-12T00:37:34Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 69,
"y": -22
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8477922,
"fullName": "Melker Karlsson",
"link": "/api/v1/people/8477922"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Takeaway",
"eventCode": "CHI251",
"eventTypeId": "TAKEAWAY",
"description": "Takeaway by Melker Karlsson"
},
"about": {
"eventIdx": 94,
"eventId": 251,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "15:47",
"periodTimeRemaining": "04:13",
"dateTime": "2020-03-12T00:38:48Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -38,
"y": 9
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI252",
"eventTypeId": "STOP",
"description": "Icing"
},
"about": {
"eventIdx": 95,
"eventId": 252,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "16:00",
"periodTimeRemaining": "04:00",
"dateTime": "2020-03-12T00:39:01Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8481516,
"fullName": "Joel Kellman",
"link": "/api/v1/people/8481516"
},
"playerType": "Winner"
},
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI253",
"eventTypeId": "FACEOFF",
"description": "Joel Kellman faceoff won against Kirby Dach"
},
"about": {
"eventIdx": 96,
"eventId": 253,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "16:00",
"periodTimeRemaining": "04:00",
"dateTime": "2020-03-12T00:39:11Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -69,
"y": 22
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8479542,
"fullName": "Brandon Hagel",
"link": "/api/v1/people/8479542"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8480160,
"fullName": "Radim Simek",
"link": "/api/v1/people/8480160"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI254",
"eventTypeId": "HIT",
"description": "Brandon Hagel hit Radim Simek"
},
"about": {
"eventIdx": 97,
"eventId": 254,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "16:27",
"periodTimeRemaining": "03:33",
"dateTime": "2020-03-12T00:39:53Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -91,
"y": 30
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8477330,
"fullName": "Dominik Kubalik",
"link": "/api/v1/people/8477330"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Takeaway",
"eventCode": "CHI255",
"eventTypeId": "TAKEAWAY",
"description": "Takeaway by Dominik Kubalik"
},
"about": {
"eventIdx": 98,
"eventId": 255,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "16:37",
"periodTimeRemaining": "03:23",
"dateTime": "2020-03-12T00:40:03Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -22,
"y": 28
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8479542,
"fullName": "Brandon Hagel",
"link": "/api/v1/people/8479542"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI204",
"eventTypeId": "SHOT",
"description": "Brandon Hagel Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 99,
"eventId": 204,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "16:40",
"periodTimeRemaining": "03:20",
"dateTime": "2020-03-12T00:40:06Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -58,
"y": -20
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8479580,
"fullName": "Dylan Gambrell",
"link": "/api/v1/people/8479580"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8476886,
"fullName": "Slater Koekkoek",
"link": "/api/v1/people/8476886"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI256",
"eventTypeId": "HIT",
"description": "Dylan Gambrell hit Slater Koekkoek"
},
"about": {
"eventIdx": 100,
"eventId": 256,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "16:53",
"periodTimeRemaining": "03:07",
"dateTime": "2020-03-12T00:40:19Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 83,
"y": -37
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI257",
"eventTypeId": "STOP",
"description": "High Stick"
},
"about": {
"eventIdx": 101,
"eventId": 257,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "17:08",
"periodTimeRemaining": "02:52",
"dateTime": "2020-03-12T00:40:41Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8480144,
"fullName": "David Kampf",
"link": "/api/v1/people/8480144"
},
"playerType": "Winner"
},
{
"player": {
"id": 8466138,
"fullName": "Joe Thornton",
"link": "/api/v1/people/8466138"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI258",
"eventTypeId": "FACEOFF",
"description": "David Kampf faceoff won against Joe Thornton"
},
"about": {
"eventIdx": 102,
"eventId": 258,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "17:08",
"periodTimeRemaining": "02:52",
"dateTime": "2020-03-12T00:40:56Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 20,
"y": -22
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8474141,
"fullName": "Patrick Kane",
"link": "/api/v1/people/8474141"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI205",
"eventTypeId": "SHOT",
"description": "Patrick Kane Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 103,
"eventId": 205,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "17:59",
"periodTimeRemaining": "02:01",
"dateTime": "2020-03-12T00:41:53Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -55,
"y": -6
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Giveaway",
"eventCode": "CHI259",
"eventTypeId": "GIVEAWAY",
"description": "Giveaway by Aaron Dell"
},
"about": {
"eventIdx": 104,
"eventId": 259,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "18:54",
"periodTimeRemaining": "01:06",
"dateTime": "2020-03-12T00:42:48Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -95,
"y": 10
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8470281,
"fullName": "Duncan Keith",
"link": "/api/v1/people/8470281"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8475841,
"fullName": "Tim Heed",
"link": "/api/v1/people/8475841"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI206",
"eventTypeId": "BLOCKED_SHOT",
"description": "Tim Heed shot blocked shot by Duncan Keith"
},
"about": {
"eventIdx": 105,
"eventId": 206,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "19:20",
"periodTimeRemaining": "00:40",
"dateTime": "2020-03-12T00:43:15Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 70,
"y": -17
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8480814,
"fullName": "Nicolas Beaudin",
"link": "/api/v1/people/8480814"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Giveaway",
"eventCode": "CHI260",
"eventTypeId": "GIVEAWAY",
"description": "Giveaway by Nicolas Beaudin"
},
"about": {
"eventIdx": 106,
"eventId": 260,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "19:24",
"periodTimeRemaining": "00:36",
"dateTime": "2020-03-12T00:43:18Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 94,
"y": 26
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8480814,
"fullName": "Nicolas Beaudin",
"link": "/api/v1/people/8480814"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8477922,
"fullName": "Melker Karlsson",
"link": "/api/v1/people/8477922"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI261",
"eventTypeId": "HIT",
"description": "Nicolas Beaudin hit Melker Karlsson"
},
"about": {
"eventIdx": 107,
"eventId": 261,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "19:31",
"periodTimeRemaining": "00:29",
"dateTime": "2020-03-12T00:43:25Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 90,
"y": 30
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8480160,
"fullName": "Radim Simek",
"link": "/api/v1/people/8480160"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI207",
"eventTypeId": "SHOT",
"description": "Radim Simek Slap Shot saved by Corey Crawford",
"secondaryType": "Slap Shot"
},
"about": {
"eventIdx": 108,
"eventId": 207,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "19:46",
"periodTimeRemaining": "00:14",
"dateTime": "2020-03-12T00:43:40Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 36,
"y": 25
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"result": {
"event": "Period End",
"eventCode": "CHI208",
"eventTypeId": "PERIOD_END",
"description": "End of 1st Period"
},
"about": {
"eventIdx": 109,
"eventId": 208,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "20:00",
"periodTimeRemaining": "00:00",
"dateTime": "2020-03-12T00:43:57Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {}
},
{
"result": {
"event": "Period Official",
"eventCode": "CHI211",
"eventTypeId": "PERIOD_OFFICIAL",
"description": "Period Official"
},
"about": {
"eventIdx": 110,
"eventId": 211,
"period": 1,
"periodType": "REGULAR",
"ordinalNum": "1st",
"periodTime": "20:00",
"periodTimeRemaining": "00:00",
"dateTime": "2020-03-12T00:44:19Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {}
},
{
"result": {
"event": "Period Ready",
"eventCode": "CHI212",
"eventTypeId": "PERIOD_READY",
"description": "Period Ready"
},
"about": {
"eventIdx": 111,
"eventId": 212,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "00:00",
"periodTimeRemaining": "20:00",
"dateTime": "2020-03-12T01:00:22Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {}
},
{
"result": {
"event": "Period Start",
"eventCode": "CHI213",
"eventTypeId": "PERIOD_START",
"description": "Period Start"
},
"about": {
"eventIdx": 112,
"eventId": 213,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "00:00",
"periodTimeRemaining": "20:00",
"dateTime": "2020-03-12T01:02:21Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604"
},
"playerType": "Winner"
},
{
"player": {
"id": 8466138,
"fullName": "Joe Thornton",
"link": "/api/v1/people/8466138"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI214",
"eventTypeId": "FACEOFF",
"description": "Jonathan Toews faceoff won against Joe Thornton"
},
"about": {
"eventIdx": 113,
"eventId": 214,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "00:00",
"periodTimeRemaining": "20:00",
"dateTime": "2020-03-12T01:02:21Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 0,
"y": 0
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8480814,
"fullName": "Nicolas Beaudin",
"link": "/api/v1/people/8480814"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8478414,
"fullName": "Timo Meier",
"link": "/api/v1/people/8478414"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI215",
"eventTypeId": "BLOCKED_SHOT",
"description": "Timo Meier shot blocked shot by Nicolas Beaudin"
},
"about": {
"eventIdx": 114,
"eventId": 215,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "00:23",
"periodTimeRemaining": "19:37",
"dateTime": "2020-03-12T01:02:50Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -65,
"y": -8
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI262",
"eventTypeId": "STOP",
"description": "Offside"
},
"about": {
"eventIdx": 115,
"eventId": 262,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "00:28",
"periodTimeRemaining": "19:32",
"dateTime": "2020-03-12T01:03:01Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8481516,
"fullName": "Joel Kellman",
"link": "/api/v1/people/8481516"
},
"playerType": "Winner"
},
{
"player": {
"id": 8478440,
"fullName": "Dylan Strome",
"link": "/api/v1/people/8478440"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI263",
"eventTypeId": "FACEOFF",
"description": "Joel Kellman faceoff won against Dylan Strome"
},
"about": {
"eventIdx": 116,
"eventId": 263,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "00:28",
"periodTimeRemaining": "19:32",
"dateTime": "2020-03-12T01:03:18Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 20,
"y": -22
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8480160,
"fullName": "Radim Simek",
"link": "/api/v1/people/8480160"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI216",
"eventTypeId": "SHOT",
"description": "Radim Simek Slap Shot saved by Corey Crawford",
"secondaryType": "Slap Shot"
},
"about": {
"eventIdx": 117,
"eventId": 216,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "01:24",
"periodTimeRemaining": "18:36",
"dateTime": "2020-03-12T01:04:18Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -53,
"y": -24
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8479393,
"fullName": "Noah Gregor",
"link": "/api/v1/people/8479393"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI217",
"eventTypeId": "SHOT",
"description": "Noah Gregor Wrist Shot saved by Corey Crawford",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 118,
"eventId": 217,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "01:27",
"periodTimeRemaining": "18:33",
"dateTime": "2020-03-12T01:04:23Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -48,
"y": 16
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI264",
"eventTypeId": "STOP",
"description": "Puck in Netting"
},
"about": {
"eventIdx": 119,
"eventId": 264,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "01:27",
"periodTimeRemaining": "18:33",
"dateTime": "2020-03-12T01:04:24Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Winner"
},
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI265",
"eventTypeId": "FACEOFF",
"description": "Evander Kane faceoff won against Kirby Dach"
},
"about": {
"eventIdx": 120,
"eventId": 265,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "01:27",
"periodTimeRemaining": "18:33",
"dateTime": "2020-03-12T01:04:40Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -69,
"y": 22
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8476874,
"fullName": "Olli Maatta",
"link": "/api/v1/people/8476874"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI218",
"eventTypeId": "BLOCKED_SHOT",
"description": "Evander Kane shot blocked shot by Olli Maatta"
},
"about": {
"eventIdx": 121,
"eventId": 218,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "01:36",
"periodTimeRemaining": "18:24",
"dateTime": "2020-03-12T01:05:07Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -71,
"y": 3
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8475869,
"fullName": "Brandon Davidson",
"link": "/api/v1/people/8475869"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8476874,
"fullName": "Olli Maatta",
"link": "/api/v1/people/8476874"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI266",
"eventTypeId": "HIT",
"description": "Brandon Davidson hit Olli Maatta"
},
"about": {
"eventIdx": 122,
"eventId": 266,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "01:52",
"periodTimeRemaining": "18:08",
"dateTime": "2020-03-12T01:05:23Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 71,
"y": 42
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8475869,
"fullName": "Brandon Davidson",
"link": "/api/v1/people/8475869"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI267",
"eventTypeId": "HIT",
"description": "Brandon Davidson hit Kirby Dach"
},
"about": {
"eventIdx": 123,
"eventId": 267,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "01:58",
"periodTimeRemaining": "18:02",
"dateTime": "2020-03-12T01:05:29Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 96,
"y": -27
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8479542,
"fullName": "Brandon Hagel",
"link": "/api/v1/people/8479542"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Takeaway",
"eventCode": "CHI268",
"eventTypeId": "TAKEAWAY",
"description": "Takeaway by Brandon Hagel"
},
"about": {
"eventIdx": 124,
"eventId": 268,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "02:04",
"periodTimeRemaining": "17:56",
"dateTime": "2020-03-12T01:05:35Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 80,
"y": 15
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8476886,
"fullName": "Slater Koekkoek",
"link": "/api/v1/people/8476886"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI269",
"eventTypeId": "HIT",
"description": "Evander Kane hit Slater Koekkoek"
},
"about": {
"eventIdx": 125,
"eventId": 269,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "02:15",
"periodTimeRemaining": "17:45",
"dateTime": "2020-03-12T01:05:46Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -98,
"y": 11
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8478099,
"fullName": "Kevin Labanc",
"link": "/api/v1/people/8478099"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8476874,
"fullName": "Olli Maatta",
"link": "/api/v1/people/8476874"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI219",
"eventTypeId": "BLOCKED_SHOT",
"description": "Olli Maatta shot blocked shot by Kevin Labanc"
},
"about": {
"eventIdx": 126,
"eventId": 219,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "02:26",
"periodTimeRemaining": "17:34",
"dateTime": "2020-03-12T01:06:30Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 61,
"y": 12
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8481640,
"fullName": "Lean Bergmann",
"link": "/api/v1/people/8481640"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8480814,
"fullName": "Nicolas Beaudin",
"link": "/api/v1/people/8480814"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI220",
"eventTypeId": "BLOCKED_SHOT",
"description": "Nicolas Beaudin shot blocked shot by Lean Bergmann"
},
"about": {
"eventIdx": 127,
"eventId": 220,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "03:15",
"periodTimeRemaining": "16:45",
"dateTime": "2020-03-12T01:06:46Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 57,
"y": -12
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8478146,
"fullName": "Matthew Highmore",
"link": "/api/v1/people/8478146"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8479580,
"fullName": "Dylan Gambrell",
"link": "/api/v1/people/8479580"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI271",
"eventTypeId": "HIT",
"description": "Matthew Highmore hit Dylan Gambrell"
},
"about": {
"eventIdx": 128,
"eventId": 271,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "03:24",
"periodTimeRemaining": "16:36",
"dateTime": "2020-03-12T01:06:55Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 74,
"y": 38
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8470281,
"fullName": "Duncan Keith",
"link": "/api/v1/people/8470281"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI221",
"eventTypeId": "SHOT",
"description": "Duncan Keith Slap Shot saved by Aaron Dell",
"secondaryType": "Slap Shot"
},
"about": {
"eventIdx": 129,
"eventId": 221,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "03:26",
"periodTimeRemaining": "16:34",
"dateTime": "2020-03-12T01:06:57Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 35,
"y": 22
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8479337,
"fullName": "Alex DeBrincat",
"link": "/api/v1/people/8479337"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Missed Shot",
"eventCode": "CHI222",
"eventTypeId": "MISSED_SHOT",
"description": "Alex DeBrincat Wide of Net"
},
"about": {
"eventIdx": 130,
"eventId": 222,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "03:37",
"periodTimeRemaining": "16:23",
"dateTime": "2020-03-12T01:07:08Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 48,
"y": 11
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI223",
"eventTypeId": "SHOT",
"description": "Jonathan Toews Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 131,
"eventId": 223,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "03:42",
"periodTimeRemaining": "16:18",
"dateTime": "2020-03-12T01:07:13Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 79,
"y": -19
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8480965,
"fullName": "Antti Suomela",
"link": "/api/v1/people/8480965"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Giveaway",
"eventCode": "CHI272",
"eventTypeId": "GIVEAWAY",
"description": "Giveaway by Antti Suomela"
},
"about": {
"eventIdx": 132,
"eventId": 272,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "03:44",
"periodTimeRemaining": "16:16",
"dateTime": "2020-03-12T01:07:15Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 66,
"y": -4
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8470613,
"fullName": "Brent Burns",
"link": "/api/v1/people/8470613"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Giveaway",
"eventCode": "CHI273",
"eventTypeId": "GIVEAWAY",
"description": "Giveaway by Brent Burns"
},
"about": {
"eventIdx": 133,
"eventId": 273,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "03:55",
"periodTimeRemaining": "16:05",
"dateTime": "2020-03-12T01:07:26Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 95,
"y": 11
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8480965,
"fullName": "Antti Suomela",
"link": "/api/v1/people/8480965"
},
"playerType": "PenaltyOn"
},
{
"player": {
"id": 8479337,
"fullName": "Alex DeBrincat",
"link": "/api/v1/people/8479337"
},
"playerType": "DrewBy"
}
],
"result": {
"event": "Penalty",
"eventCode": "CHI224",
"eventTypeId": "PENALTY",
"description": "Antti Suomela Hooking against Alex DeBrincat",
"secondaryType": "Hooking",
"penaltySeverity": "Minor",
"penaltyMinutes": 2
},
"about": {
"eventIdx": 134,
"eventId": 224,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "03:59",
"periodTimeRemaining": "16:01",
"dateTime": "2020-03-12T01:07:39Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 55,
"y": -10
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604"
},
"playerType": "Winner"
},
{
"player": {
"id": 8479580,
"fullName": "Dylan Gambrell",
"link": "/api/v1/people/8479580"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI274",
"eventTypeId": "FACEOFF",
"description": "Jonathan Toews faceoff won against Dylan Gambrell"
},
"about": {
"eventIdx": 135,
"eventId": 274,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "03:59",
"periodTimeRemaining": "16:01",
"dateTime": "2020-03-12T01:08:06Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 69,
"y": 22
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Giveaway",
"eventCode": "CHI275",
"eventTypeId": "GIVEAWAY",
"description": "Giveaway by Jonathan Toews"
},
"about": {
"eventIdx": 136,
"eventId": 275,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "04:07",
"periodTimeRemaining": "15:53",
"dateTime": "2020-03-12T01:08:18Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": 61,
"y": 33
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8477922,
"fullName": "Melker Karlsson",
"link": "/api/v1/people/8477922"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI226",
"eventTypeId": "SHOT",
"description": "Melker Karlsson Wrist Shot saved by Corey Crawford",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 137,
"eventId": 226,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "04:13",
"periodTimeRemaining": "15:47",
"dateTime": "2020-03-12T01:08:23Z",
"goals": {
"away": 1,
"home": 0
}
},
"coordinates": {
"x": -74,
"y": -22
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8470281,
"fullName": "Duncan Keith",
"link": "/api/v1/people/8470281"
},
"playerType": "Scorer",
"seasonTotal": 3
},
{
"player": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604"
},
"playerType": "Assist",
"seasonTotal": 41
},
{
"player": {
"id": 8479337,
"fullName": "Alex DeBrincat",
"link": "/api/v1/people/8479337"
},
"playerType": "Assist",
"seasonTotal": 25
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Goal",
"eventCode": "CHI227",
"eventTypeId": "GOAL",
"description": "Duncan Keith (3) Wrist Shot, assists: Jonathan Toews (41), Alex DeBrincat (25)",
"secondaryType": "Wrist Shot",
"strength": {
"code": "PPG",
"name": "Power Play"
},
"gameWinningGoal": false,
"emptyNet": false
},
"about": {
"eventIdx": 138,
"eventId": 227,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "04:33",
"periodTimeRemaining": "15:27",
"dateTime": "2020-03-12T01:08:45Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 38,
"y": 13
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8480144,
"fullName": "David Kampf",
"link": "/api/v1/people/8480144"
},
"playerType": "Winner"
},
{
"player": {
"id": 8466138,
"fullName": "Joe Thornton",
"link": "/api/v1/people/8466138"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI276",
"eventTypeId": "FACEOFF",
"description": "David Kampf faceoff won against Joe Thornton"
},
"about": {
"eventIdx": 139,
"eventId": 276,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "04:33",
"periodTimeRemaining": "15:27",
"dateTime": "2020-03-12T01:09:23Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 0,
"y": 0
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8480144,
"fullName": "David Kampf",
"link": "/api/v1/people/8480144"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8480160,
"fullName": "Radim Simek",
"link": "/api/v1/people/8480160"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI277",
"eventTypeId": "HIT",
"description": "David Kampf hit Radim Simek"
},
"about": {
"eventIdx": 140,
"eventId": 277,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "04:43",
"periodTimeRemaining": "15:17",
"dateTime": "2020-03-12T01:09:46Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 98,
"y": -5
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8470613,
"fullName": "Brent Burns",
"link": "/api/v1/people/8470613"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8477846,
"fullName": "Ryan Carpenter",
"link": "/api/v1/people/8477846"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI278",
"eventTypeId": "HIT",
"description": "Brent Burns hit Ryan Carpenter"
},
"about": {
"eventIdx": 141,
"eventId": 278,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "05:02",
"periodTimeRemaining": "14:58",
"dateTime": "2020-03-12T01:10:05Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 86,
"y": 35
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI279",
"eventTypeId": "STOP",
"description": "Referee or Linesman"
},
"about": {
"eventIdx": 142,
"eventId": 279,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "05:12",
"periodTimeRemaining": "14:48",
"dateTime": "2020-03-12T01:10:22Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Winner"
},
{
"player": {
"id": 8478440,
"fullName": "Dylan Strome",
"link": "/api/v1/people/8478440"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI280",
"eventTypeId": "FACEOFF",
"description": "Evander Kane faceoff won against Dylan Strome"
},
"about": {
"eventIdx": 143,
"eventId": 280,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "05:12",
"periodTimeRemaining": "14:48",
"dateTime": "2020-03-12T01:10:50Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": -20,
"y": 22
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8476886,
"fullName": "Slater Koekkoek",
"link": "/api/v1/people/8476886"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8479393,
"fullName": "Noah Gregor",
"link": "/api/v1/people/8479393"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI228",
"eventTypeId": "BLOCKED_SHOT",
"description": "Noah Gregor shot blocked shot by Slater Koekkoek"
},
"about": {
"eventIdx": 144,
"eventId": 228,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "05:19",
"periodTimeRemaining": "14:41",
"dateTime": "2020-03-12T01:10:58Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": -58,
"y": -8
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8478099,
"fullName": "Kevin Labanc",
"link": "/api/v1/people/8478099"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8476874,
"fullName": "Olli Maatta",
"link": "/api/v1/people/8476874"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI281",
"eventTypeId": "HIT",
"description": "Kevin Labanc hit Olli Maatta"
},
"about": {
"eventIdx": 145,
"eventId": 281,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "05:22",
"periodTimeRemaining": "14:38",
"dateTime": "2020-03-12T01:11:01Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": -84,
"y": -37
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8478440,
"fullName": "Dylan Strome",
"link": "/api/v1/people/8478440"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8478099,
"fullName": "Kevin Labanc",
"link": "/api/v1/people/8478099"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI282",
"eventTypeId": "HIT",
"description": "Dylan Strome hit Kevin Labanc"
},
"about": {
"eventIdx": 146,
"eventId": 282,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "05:38",
"periodTimeRemaining": "14:22",
"dateTime": "2020-03-12T01:11:17Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 49,
"y": 40
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8474141,
"fullName": "Patrick Kane",
"link": "/api/v1/people/8474141"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI229",
"eventTypeId": "SHOT",
"description": "Patrick Kane Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 147,
"eventId": 229,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "05:48",
"periodTimeRemaining": "14:12",
"dateTime": "2020-03-12T01:11:27Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 83,
"y": -6
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8476886,
"fullName": "Slater Koekkoek",
"link": "/api/v1/people/8476886"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8479393,
"fullName": "Noah Gregor",
"link": "/api/v1/people/8479393"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI283",
"eventTypeId": "HIT",
"description": "Slater Koekkoek hit Noah Gregor"
},
"about": {
"eventIdx": 148,
"eventId": 283,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "05:57",
"periodTimeRemaining": "14:03",
"dateTime": "2020-03-12T01:11:36Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": -98,
"y": 6
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "PenaltyOn"
},
{
"player": {
"id": 8478440,
"fullName": "Dylan Strome",
"link": "/api/v1/people/8478440"
},
"playerType": "DrewBy"
}
],
"result": {
"event": "Penalty",
"eventCode": "CHI230",
"eventTypeId": "PENALTY",
"description": "Evander Kane Holding against Dylan Strome",
"secondaryType": "Holding",
"penaltySeverity": "Minor",
"penaltyMinutes": 2
},
"about": {
"eventIdx": 149,
"eventId": 230,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "06:05",
"periodTimeRemaining": "13:55",
"dateTime": "2020-03-12T01:11:58Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": -20,
"y": 13
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI284",
"eventTypeId": "STOP",
"description": "TV timeout"
},
"about": {
"eventIdx": 150,
"eventId": 284,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "06:05",
"periodTimeRemaining": "13:55",
"dateTime": "2020-03-12T01:11:58Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8479580,
"fullName": "Dylan Gambrell",
"link": "/api/v1/people/8479580"
},
"playerType": "Winner"
},
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI285",
"eventTypeId": "FACEOFF",
"description": "Dylan Gambrell faceoff won against Kirby Dach"
},
"about": {
"eventIdx": 151,
"eventId": 285,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "06:05",
"periodTimeRemaining": "13:55",
"dateTime": "2020-03-12T01:13:51Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 69,
"y": 22
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8479337,
"fullName": "Alex DeBrincat",
"link": "/api/v1/people/8479337"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Missed Shot",
"eventCode": "CHI232",
"eventTypeId": "MISSED_SHOT",
"description": "Alex DeBrincat Wide of Net"
},
"about": {
"eventIdx": 152,
"eventId": 232,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "06:41",
"periodTimeRemaining": "13:19",
"dateTime": "2020-03-12T01:15:02Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 72,
"y": 2
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8481516,
"fullName": "Joel Kellman",
"link": "/api/v1/people/8481516"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Takeaway",
"eventCode": "CHI286",
"eventTypeId": "TAKEAWAY",
"description": "Takeaway by Joel Kellman"
},
"about": {
"eventIdx": 153,
"eventId": 286,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "07:13",
"periodTimeRemaining": "12:47",
"dateTime": "2020-03-12T01:15:34Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 33,
"y": 18
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8479337,
"fullName": "Alex DeBrincat",
"link": "/api/v1/people/8479337"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Takeaway",
"eventCode": "CHI287",
"eventTypeId": "TAKEAWAY",
"description": "Takeaway by Alex DeBrincat"
},
"about": {
"eventIdx": 154,
"eventId": 287,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "07:21",
"periodTimeRemaining": "12:39",
"dateTime": "2020-03-12T01:15:42Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": -47,
"y": -9
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8478440,
"fullName": "Dylan Strome",
"link": "/api/v1/people/8478440"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Missed Shot",
"eventCode": "CHI233",
"eventTypeId": "MISSED_SHOT",
"description": "Dylan Strome Wide of Net"
},
"about": {
"eventIdx": 155,
"eventId": 233,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "07:26",
"periodTimeRemaining": "12:34",
"dateTime": "2020-03-12T01:15:47Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 80,
"y": -9
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8478440,
"fullName": "Dylan Strome",
"link": "/api/v1/people/8478440"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI234",
"eventTypeId": "SHOT",
"description": "Dylan Strome Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 156,
"eventId": 234,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "07:52",
"periodTimeRemaining": "12:08",
"dateTime": "2020-03-12T01:16:13Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 54,
"y": 0
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI289",
"eventTypeId": "STOP",
"description": "Goalie Stopped"
},
"about": {
"eventIdx": 157,
"eventId": 289,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "07:52",
"periodTimeRemaining": "12:08",
"dateTime": "2020-03-12T01:16:20Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8479580,
"fullName": "Dylan Gambrell",
"link": "/api/v1/people/8479580"
},
"playerType": "Winner"
},
{
"player": {
"id": 8478440,
"fullName": "Dylan Strome",
"link": "/api/v1/people/8478440"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI290",
"eventTypeId": "FACEOFF",
"description": "Dylan Gambrell faceoff won against Dylan Strome"
},
"about": {
"eventIdx": 158,
"eventId": 290,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "07:52",
"periodTimeRemaining": "12:08",
"dateTime": "2020-03-12T01:16:39Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 69,
"y": 22
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8477330,
"fullName": "Dominik Kubalik",
"link": "/api/v1/people/8477330"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI235",
"eventTypeId": "SHOT",
"description": "Dominik Kubalik Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 159,
"eventId": 235,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "08:10",
"periodTimeRemaining": "11:50",
"dateTime": "2020-03-12T01:16:54Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 51,
"y": 0
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8477846,
"fullName": "Ryan Carpenter",
"link": "/api/v1/people/8477846"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI236",
"eventTypeId": "SHOT",
"description": "Ryan Carpenter Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 160,
"eventId": 236,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "08:35",
"periodTimeRemaining": "11:25",
"dateTime": "2020-03-12T01:17:19Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 71,
"y": -17
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8477846,
"fullName": "Ryan Carpenter",
"link": "/api/v1/people/8477846"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI237",
"eventTypeId": "SHOT",
"description": "Ryan Carpenter Backhand saved by Aaron Dell",
"secondaryType": "Backhand"
},
"about": {
"eventIdx": 161,
"eventId": 237,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "08:39",
"periodTimeRemaining": "11:21",
"dateTime": "2020-03-12T01:17:23Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 85,
"y": -7
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8478146,
"fullName": "Matthew Highmore",
"link": "/api/v1/people/8478146"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI238",
"eventTypeId": "SHOT",
"description": "Matthew Highmore Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 162,
"eventId": 238,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "08:53",
"periodTimeRemaining": "11:07",
"dateTime": "2020-03-12T01:17:37Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 41,
"y": 24
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8476886,
"fullName": "Slater Koekkoek",
"link": "/api/v1/people/8476886"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Missed Shot",
"eventCode": "CHI239",
"eventTypeId": "MISSED_SHOT",
"description": "Slater Koekkoek Wide of Net"
},
"about": {
"eventIdx": 163,
"eventId": 239,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "09:01",
"periodTimeRemaining": "10:59",
"dateTime": "2020-03-12T01:17:45Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 40,
"y": -17
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8475869,
"fullName": "Brandon Davidson",
"link": "/api/v1/people/8475869"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8480144,
"fullName": "David Kampf",
"link": "/api/v1/people/8480144"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI291",
"eventTypeId": "HIT",
"description": "Brandon Davidson hit David Kampf"
},
"about": {
"eventIdx": 164,
"eventId": 291,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "09:04",
"periodTimeRemaining": "10:56",
"dateTime": "2020-03-12T01:17:48Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 97,
"y": 20
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Giveaway",
"eventCode": "CHI292",
"eventTypeId": "GIVEAWAY",
"description": "Giveaway by Corey Crawford"
},
"about": {
"eventIdx": 165,
"eventId": 292,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "09:33",
"periodTimeRemaining": "10:27",
"dateTime": "2020-03-12T01:18:17Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": -87,
"y": -12
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8476438,
"fullName": "Brandon Saad",
"link": "/api/v1/people/8476438"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Giveaway",
"eventCode": "CHI293",
"eventTypeId": "GIVEAWAY",
"description": "Giveaway by Brandon Saad"
},
"about": {
"eventIdx": 166,
"eventId": 293,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "09:44",
"periodTimeRemaining": "10:16",
"dateTime": "2020-03-12T01:18:27Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 85,
"y": -33
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8481516,
"fullName": "Joel Kellman",
"link": "/api/v1/people/8481516"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI240",
"eventTypeId": "SHOT",
"description": "Joel Kellman Wrist Shot saved by Corey Crawford",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 167,
"eventId": 240,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "10:12",
"periodTimeRemaining": "09:48",
"dateTime": "2020-03-12T01:18:57Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": -58,
"y": -22
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI294",
"eventTypeId": "STOP",
"description": "Goalie Stopped"
},
"about": {
"eventIdx": 168,
"eventId": 294,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "10:12",
"periodTimeRemaining": "09:48",
"dateTime": "2020-03-12T01:18:58Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8478440,
"fullName": "Dylan Strome",
"link": "/api/v1/people/8478440"
},
"playerType": "Winner"
},
{
"player": {
"id": 8481516,
"fullName": "Joel Kellman",
"link": "/api/v1/people/8481516"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI295",
"eventTypeId": "FACEOFF",
"description": "Dylan Strome faceoff won against Joel Kellman"
},
"about": {
"eventIdx": 169,
"eventId": 295,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "10:12",
"periodTimeRemaining": "09:48",
"dateTime": "2020-03-12T01:20:52Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": -69,
"y": -22
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8476474,
"fullName": "Stefan Noesen",
"link": "/api/v1/people/8476474"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8480814,
"fullName": "Nicolas Beaudin",
"link": "/api/v1/people/8480814"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI296",
"eventTypeId": "HIT",
"description": "Stefan Noesen hit Nicolas Beaudin"
},
"about": {
"eventIdx": 170,
"eventId": 296,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "10:20",
"periodTimeRemaining": "09:40",
"dateTime": "2020-03-12T01:21:20Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": -95,
"y": -19
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8470281,
"fullName": "Duncan Keith",
"link": "/api/v1/people/8470281"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Giveaway",
"eventCode": "CHI298",
"eventTypeId": "GIVEAWAY",
"description": "Giveaway by Duncan Keith"
},
"about": {
"eventIdx": 171,
"eventId": 298,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "10:30",
"periodTimeRemaining": "09:30",
"dateTime": "2020-03-12T01:21:42Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": -96,
"y": -11
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8476474,
"fullName": "Stefan Noesen",
"link": "/api/v1/people/8476474"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8478440,
"fullName": "Dylan Strome",
"link": "/api/v1/people/8478440"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI297",
"eventTypeId": "HIT",
"description": "Stefan Noesen hit Dylan Strome"
},
"about": {
"eventIdx": 172,
"eventId": 297,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "10:33",
"periodTimeRemaining": "09:27",
"dateTime": "2020-03-12T01:21:33Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": -73,
"y": -39
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8480814,
"fullName": "Nicolas Beaudin",
"link": "/api/v1/people/8480814"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Missed Shot",
"eventCode": "CHI241",
"eventTypeId": "MISSED_SHOT",
"description": "Nicolas Beaudin Goalpost"
},
"about": {
"eventIdx": 173,
"eventId": 241,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "10:47",
"periodTimeRemaining": "09:13",
"dateTime": "2020-03-12T01:21:47Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 36,
"y": -5
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8470613,
"fullName": "Brent Burns",
"link": "/api/v1/people/8470613"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Takeaway",
"eventCode": "CHI299",
"eventTypeId": "TAKEAWAY",
"description": "Takeaway by Brent Burns"
},
"about": {
"eventIdx": 174,
"eventId": 299,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "11:03",
"periodTimeRemaining": "08:57",
"dateTime": "2020-03-12T01:22:16Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 79,
"y": -13
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8470613,
"fullName": "Brent Burns",
"link": "/api/v1/people/8470613"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Missed Shot",
"eventCode": "CHI242",
"eventTypeId": "MISSED_SHOT",
"description": "Brent Burns Wide of Net"
},
"about": {
"eventIdx": 175,
"eventId": 242,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "11:09",
"periodTimeRemaining": "08:51",
"dateTime": "2020-03-12T01:22:09Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": -38,
"y": 33
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8481640,
"fullName": "Lean Bergmann",
"link": "/api/v1/people/8481640"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI243",
"eventTypeId": "SHOT",
"description": "Lean Bergmann Slap Shot saved by Corey Crawford",
"secondaryType": "Slap Shot"
},
"about": {
"eventIdx": 176,
"eventId": 243,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "11:22",
"periodTimeRemaining": "08:38",
"dateTime": "2020-03-12T01:22:22Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": -54,
"y": -31
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI300",
"eventTypeId": "STOP",
"description": "Goalie Stopped"
},
"about": {
"eventIdx": 177,
"eventId": 300,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "11:22",
"periodTimeRemaining": "08:38",
"dateTime": "2020-03-12T01:22:23Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "Winner"
},
{
"player": {
"id": 8479580,
"fullName": "Dylan Gambrell",
"link": "/api/v1/people/8479580"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI401",
"eventTypeId": "FACEOFF",
"description": "Kirby Dach faceoff won against Dylan Gambrell"
},
"about": {
"eventIdx": 178,
"eventId": 401,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "11:22",
"periodTimeRemaining": "08:38",
"dateTime": "2020-03-12T01:22:39Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": -69,
"y": -22
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8480965,
"fullName": "Antti Suomela",
"link": "/api/v1/people/8480965"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8477330,
"fullName": "Dominik Kubalik",
"link": "/api/v1/people/8477330"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI402",
"eventTypeId": "HIT",
"description": "Antti Suomela hit Dominik Kubalik"
},
"about": {
"eventIdx": 179,
"eventId": 402,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "11:36",
"periodTimeRemaining": "08:24",
"dateTime": "2020-03-12T01:23:10Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 97,
"y": -17
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8479542,
"fullName": "Brandon Hagel",
"link": "/api/v1/people/8479542"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI244",
"eventTypeId": "SHOT",
"description": "Brandon Hagel Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 180,
"eventId": 244,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "11:48",
"periodTimeRemaining": "08:12",
"dateTime": "2020-03-12T01:23:21Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 82,
"y": -12
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8481640,
"fullName": "Lean Bergmann",
"link": "/api/v1/people/8481640"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8479523,
"fullName": "Lucas Carlsson",
"link": "/api/v1/people/8479523"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI403",
"eventTypeId": "HIT",
"description": "Lean Bergmann hit Lucas Carlsson"
},
"about": {
"eventIdx": 181,
"eventId": 403,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "12:00",
"periodTimeRemaining": "08:00",
"dateTime": "2020-03-12T01:23:33Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": -47,
"y": -38
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8475834,
"fullName": "Marcus Sorensen",
"link": "/api/v1/people/8475834"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8476473,
"fullName": "Connor Murphy",
"link": "/api/v1/people/8476473"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI404",
"eventTypeId": "HIT",
"description": "Marcus Sorensen hit Connor Murphy"
},
"about": {
"eventIdx": 182,
"eventId": 404,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "12:14",
"periodTimeRemaining": "07:46",
"dateTime": "2020-03-12T01:23:47Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": -97,
"y": -13
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8479393,
"fullName": "Noah Gregor",
"link": "/api/v1/people/8479393"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8479337,
"fullName": "Alex DeBrincat",
"link": "/api/v1/people/8479337"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI245",
"eventTypeId": "BLOCKED_SHOT",
"description": "Alex DeBrincat shot blocked shot by Noah Gregor"
},
"about": {
"eventIdx": 183,
"eventId": 245,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "13:05",
"periodTimeRemaining": "06:55",
"dateTime": "2020-03-12T01:24:39Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 71,
"y": 11
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8481812,
"fullName": "Nikolai Knyzhov",
"link": "/api/v1/people/8481812"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8480814,
"fullName": "Nicolas Beaudin",
"link": "/api/v1/people/8480814"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI246",
"eventTypeId": "BLOCKED_SHOT",
"description": "Nicolas Beaudin shot blocked shot by Nikolai Knyzhov"
},
"about": {
"eventIdx": 184,
"eventId": 246,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "13:15",
"periodTimeRemaining": "06:45",
"dateTime": "2020-03-12T01:24:49Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 77,
"y": -4
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI405",
"eventTypeId": "STOP",
"description": "Offside"
},
"about": {
"eventIdx": 185,
"eventId": 405,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "13:15",
"periodTimeRemaining": "06:45",
"dateTime": "2020-03-12T01:24:50Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Winner"
},
{
"player": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI406",
"eventTypeId": "FACEOFF",
"description": "Evander Kane faceoff won against Jonathan Toews"
},
"about": {
"eventIdx": 186,
"eventId": 406,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "13:15",
"periodTimeRemaining": "06:45",
"dateTime": "2020-03-12T01:25:11Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 20,
"y": 22
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8479337,
"fullName": "Alex DeBrincat",
"link": "/api/v1/people/8479337"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Takeaway",
"eventCode": "CHI407",
"eventTypeId": "TAKEAWAY",
"description": "Takeaway by Alex DeBrincat"
},
"about": {
"eventIdx": 187,
"eventId": 407,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "13:44",
"periodTimeRemaining": "06:16",
"dateTime": "2020-03-12T01:25:45Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": -39,
"y": 35
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8480160,
"fullName": "Radim Simek",
"link": "/api/v1/people/8480160"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Takeaway",
"eventCode": "CHI409",
"eventTypeId": "TAKEAWAY",
"description": "Takeaway by Radim Simek"
},
"about": {
"eventIdx": 188,
"eventId": 409,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "13:50",
"periodTimeRemaining": "06:10",
"dateTime": "2020-03-12T01:25:51Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 34,
"y": 17
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8481516,
"fullName": "Joel Kellman",
"link": "/api/v1/people/8481516"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI247",
"eventTypeId": "SHOT",
"description": "Joel Kellman Wrist Shot saved by Corey Crawford",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 189,
"eventId": 247,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "14:04",
"periodTimeRemaining": "05:56",
"dateTime": "2020-03-12T01:26:05Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": -83,
"y": -22
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8474141,
"fullName": "Patrick Kane",
"link": "/api/v1/people/8474141"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8475869,
"fullName": "Brandon Davidson",
"link": "/api/v1/people/8475869"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI248",
"eventTypeId": "BLOCKED_SHOT",
"description": "Brandon Davidson shot blocked shot by Patrick Kane"
},
"about": {
"eventIdx": 190,
"eventId": 248,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "14:11",
"periodTimeRemaining": "05:49",
"dateTime": "2020-03-12T01:26:12Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": -46,
"y": -15
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8476473,
"fullName": "Connor Murphy",
"link": "/api/v1/people/8476473"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Missed Shot",
"eventCode": "CHI249",
"eventTypeId": "MISSED_SHOT",
"description": "Connor Murphy Wide of Net"
},
"about": {
"eventIdx": 191,
"eventId": 249,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "14:28",
"periodTimeRemaining": "05:32",
"dateTime": "2020-03-12T01:26:28Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 35,
"y": 0
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8478440,
"fullName": "Dylan Strome",
"link": "/api/v1/people/8478440"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI250",
"eventTypeId": "SHOT",
"description": "Dylan Strome Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 192,
"eventId": 250,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "14:32",
"periodTimeRemaining": "05:28",
"dateTime": "2020-03-12T01:26:33Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 86,
"y": 8
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8476474,
"fullName": "Stefan Noesen",
"link": "/api/v1/people/8476474"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8476473,
"fullName": "Connor Murphy",
"link": "/api/v1/people/8476473"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI451",
"eventTypeId": "BLOCKED_SHOT",
"description": "Connor Murphy shot blocked shot by Stefan Noesen"
},
"about": {
"eventIdx": 193,
"eventId": 451,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "14:37",
"periodTimeRemaining": "05:23",
"dateTime": "2020-03-12T01:26:38Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 72,
"y": -2
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8479523,
"fullName": "Lucas Carlsson",
"link": "/api/v1/people/8479523"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI452",
"eventTypeId": "SHOT",
"description": "Lucas Carlsson Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 194,
"eventId": 452,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "14:58",
"periodTimeRemaining": "05:02",
"dateTime": "2020-03-12T01:26:59Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 64,
"y": 6
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8477330,
"fullName": "Dominik Kubalik",
"link": "/api/v1/people/8477330"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8475869,
"fullName": "Brandon Davidson",
"link": "/api/v1/people/8475869"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI410",
"eventTypeId": "HIT",
"description": "Dominik Kubalik hit Brandon Davidson"
},
"about": {
"eventIdx": 195,
"eventId": 410,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "15:04",
"periodTimeRemaining": "04:56",
"dateTime": "2020-03-12T01:27:05Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 66,
"y": -39
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8471709,
"fullName": "Marc-Edouard Vlasic",
"link": "/api/v1/people/8471709"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI453",
"eventTypeId": "BLOCKED_SHOT",
"description": "Kirby Dach shot blocked shot by Marc-Edouard Vlasic"
},
"about": {
"eventIdx": 196,
"eventId": 453,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "15:22",
"periodTimeRemaining": "04:38",
"dateTime": "2020-03-12T01:27:22Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 80,
"y": -11
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI411",
"eventTypeId": "STOP",
"description": "Puck in Netting"
},
"about": {
"eventIdx": 197,
"eventId": 411,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "15:22",
"periodTimeRemaining": "04:38",
"dateTime": "2020-03-12T01:27:24Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "Winner"
},
{
"player": {
"id": 8479393,
"fullName": "Noah Gregor",
"link": "/api/v1/people/8479393"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI412",
"eventTypeId": "FACEOFF",
"description": "Kirby Dach faceoff won against Noah Gregor"
},
"about": {
"eventIdx": 198,
"eventId": 412,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "15:22",
"periodTimeRemaining": "04:38",
"dateTime": "2020-03-12T01:29:23Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 69,
"y": -22
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8479542,
"fullName": "Brandon Hagel",
"link": "/api/v1/people/8479542"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI454",
"eventTypeId": "SHOT",
"description": "Brandon Hagel Wrap-around saved by Aaron Dell",
"secondaryType": "Wrap-around"
},
"about": {
"eventIdx": 199,
"eventId": 454,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "15:30",
"periodTimeRemaining": "04:30",
"dateTime": "2020-03-12T01:29:53Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 87,
"y": 5
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8481812,
"fullName": "Nikolai Knyzhov",
"link": "/api/v1/people/8481812"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8479542,
"fullName": "Brandon Hagel",
"link": "/api/v1/people/8479542"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI413",
"eventTypeId": "HIT",
"description": "Nikolai Knyzhov hit Brandon Hagel"
},
"about": {
"eventIdx": 200,
"eventId": 413,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "15:31",
"periodTimeRemaining": "04:29",
"dateTime": "2020-03-12T01:29:53Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 97,
"y": -2
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8481812,
"fullName": "Nikolai Knyzhov",
"link": "/api/v1/people/8481812"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8479542,
"fullName": "Brandon Hagel",
"link": "/api/v1/people/8479542"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI414",
"eventTypeId": "HIT",
"description": "Nikolai Knyzhov hit Brandon Hagel"
},
"about": {
"eventIdx": 201,
"eventId": 414,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "15:40",
"periodTimeRemaining": "04:20",
"dateTime": "2020-03-12T01:30:02Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 90,
"y": -32
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8470613,
"fullName": "Brent Burns",
"link": "/api/v1/people/8470613"
},
"playerType": "PenaltyOn"
},
{
"player": {
"id": 8479542,
"fullName": "Brandon Hagel",
"link": "/api/v1/people/8479542"
},
"playerType": "DrewBy"
}
],
"result": {
"event": "Penalty",
"eventCode": "CHI455",
"eventTypeId": "PENALTY",
"description": "Brent Burns Roughing against Brandon Hagel",
"secondaryType": "Roughing",
"penaltySeverity": "Minor",
"penaltyMinutes": 2
},
"about": {
"eventIdx": 202,
"eventId": 455,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "15:59",
"periodTimeRemaining": "04:01",
"dateTime": "2020-03-12T01:30:34Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 9,
"y": 39
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604"
},
"playerType": "Winner"
},
{
"player": {
"id": 8479580,
"fullName": "Dylan Gambrell",
"link": "/api/v1/people/8479580"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI416",
"eventTypeId": "FACEOFF",
"description": "Jonathan Toews faceoff won against Dylan Gambrell"
},
"about": {
"eventIdx": 203,
"eventId": 416,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "15:59",
"periodTimeRemaining": "04:01",
"dateTime": "2020-03-12T01:31:19Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 69,
"y": 22
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8474141,
"fullName": "Patrick Kane",
"link": "/api/v1/people/8474141"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI457",
"eventTypeId": "SHOT",
"description": "Patrick Kane Slap Shot saved by Aaron Dell",
"secondaryType": "Slap Shot"
},
"about": {
"eventIdx": 204,
"eventId": 457,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "16:04",
"periodTimeRemaining": "03:56",
"dateTime": "2020-03-12T01:31:17Z",
"goals": {
"away": 1,
"home": 1
}
},
"coordinates": {
"x": 48,
"y": -12
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8474141,
"fullName": "Patrick Kane",
"link": "/api/v1/people/8474141"
},
"playerType": "Scorer",
"seasonTotal": 32
},
{
"player": {
"id": 8479337,
"fullName": "Alex DeBrincat",
"link": "/api/v1/people/8479337"
},
"playerType": "Assist",
"seasonTotal": 26
},
{
"player": {
"id": 8470281,
"fullName": "Duncan Keith",
"link": "/api/v1/people/8470281"
},
"playerType": "Assist",
"seasonTotal": 24
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Goal",
"eventCode": "CHI458",
"eventTypeId": "GOAL",
"description": "Patrick Kane (32) Tip-In, assists: Alex DeBrincat (26), Duncan Keith (24)",
"secondaryType": "Tip-In",
"strength": {
"code": "PPG",
"name": "Power Play"
},
"gameWinningGoal": false,
"emptyNet": false
},
"about": {
"eventIdx": 205,
"eventId": 458,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "16:33",
"periodTimeRemaining": "03:27",
"dateTime": "2020-03-12T01:31:48Z",
"goals": {
"away": 1,
"home": 2
}
},
"coordinates": {
"x": 82,
"y": 4
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8480144,
"fullName": "David Kampf",
"link": "/api/v1/people/8480144"
},
"playerType": "Winner"
},
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI417",
"eventTypeId": "FACEOFF",
"description": "David Kampf faceoff won against Evander Kane"
},
"about": {
"eventIdx": 206,
"eventId": 417,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "16:33",
"periodTimeRemaining": "03:27",
"dateTime": "2020-03-12T01:32:47Z",
"goals": {
"away": 1,
"home": 2
}
},
"coordinates": {
"x": 0,
"y": 0
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8479393,
"fullName": "Noah Gregor",
"link": "/api/v1/people/8479393"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8476473,
"fullName": "Connor Murphy",
"link": "/api/v1/people/8476473"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI418",
"eventTypeId": "HIT",
"description": "Noah Gregor hit Connor Murphy"
},
"about": {
"eventIdx": 207,
"eventId": 418,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "17:00",
"periodTimeRemaining": "03:00",
"dateTime": "2020-03-12T01:33:17Z",
"goals": {
"away": 1,
"home": 2
}
},
"coordinates": {
"x": -81,
"y": -38
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8476473,
"fullName": "Connor Murphy",
"link": "/api/v1/people/8476473"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8478099,
"fullName": "Kevin Labanc",
"link": "/api/v1/people/8478099"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI459",
"eventTypeId": "BLOCKED_SHOT",
"description": "Kevin Labanc shot blocked shot by Connor Murphy"
},
"about": {
"eventIdx": 208,
"eventId": 459,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "17:22",
"periodTimeRemaining": "02:38",
"dateTime": "2020-03-12T01:33:39Z",
"goals": {
"away": 1,
"home": 2
}
},
"coordinates": {
"x": -76,
"y": -5
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8470281,
"fullName": "Duncan Keith",
"link": "/api/v1/people/8470281"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Giveaway",
"eventCode": "CHI419",
"eventTypeId": "GIVEAWAY",
"description": "Giveaway by Duncan Keith"
},
"about": {
"eventIdx": 209,
"eventId": 419,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "17:42",
"periodTimeRemaining": "02:18",
"dateTime": "2020-03-12T01:33:59Z",
"goals": {
"away": 1,
"home": 2
}
},
"coordinates": {
"x": -94,
"y": 28
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8480814,
"fullName": "Nicolas Beaudin",
"link": "/api/v1/people/8480814"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8471709,
"fullName": "Marc-Edouard Vlasic",
"link": "/api/v1/people/8471709"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI460",
"eventTypeId": "BLOCKED_SHOT",
"description": "Marc-Edouard Vlasic shot blocked shot by Nicolas Beaudin"
},
"about": {
"eventIdx": 210,
"eventId": 460,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "17:48",
"periodTimeRemaining": "02:12",
"dateTime": "2020-03-12T01:34:05Z",
"goals": {
"away": 1,
"home": 2
}
},
"coordinates": {
"x": -71,
"y": 5
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8476438,
"fullName": "Brandon Saad",
"link": "/api/v1/people/8476438"
},
"playerType": "Scorer",
"seasonTotal": 21
},
{
"player": {
"id": 8479337,
"fullName": "Alex DeBrincat",
"link": "/api/v1/people/8479337"
},
"playerType": "Assist",
"seasonTotal": 27
},
{
"player": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604"
},
"playerType": "Assist",
"seasonTotal": 42
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Goal",
"eventCode": "CHI461",
"eventTypeId": "GOAL",
"description": "Brandon Saad (21) Wrist Shot, assists: Alex DeBrincat (27), Jonathan Toews (42)",
"secondaryType": "Wrist Shot",
"strength": {
"code": "EVEN",
"name": "Even"
},
"gameWinningGoal": true,
"emptyNet": false
},
"about": {
"eventIdx": 211,
"eventId": 461,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "17:58",
"periodTimeRemaining": "02:02",
"dateTime": "2020-03-12T01:34:16Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": 72,
"y": 3
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8478440,
"fullName": "Dylan Strome",
"link": "/api/v1/people/8478440"
},
"playerType": "Winner"
},
{
"player": {
"id": 8480965,
"fullName": "Antti Suomela",
"link": "/api/v1/people/8480965"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI420",
"eventTypeId": "FACEOFF",
"description": "Dylan Strome faceoff won against Antti Suomela"
},
"about": {
"eventIdx": 212,
"eventId": 420,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "17:58",
"periodTimeRemaining": "02:02",
"dateTime": "2020-03-12T01:34:51Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": 0,
"y": 0
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8480160,
"fullName": "Radim Simek",
"link": "/api/v1/people/8480160"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Giveaway",
"eventCode": "CHI422",
"eventTypeId": "GIVEAWAY",
"description": "Giveaway by Radim Simek"
},
"about": {
"eventIdx": 213,
"eventId": 422,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "18:11",
"periodTimeRemaining": "01:49",
"dateTime": "2020-03-12T01:35:20Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": 81,
"y": -38
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8474141,
"fullName": "Patrick Kane",
"link": "/api/v1/people/8474141"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI462",
"eventTypeId": "SHOT",
"description": "Patrick Kane Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 214,
"eventId": 462,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "18:13",
"periodTimeRemaining": "01:47",
"dateTime": "2020-03-12T01:35:20Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": 72,
"y": -5
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8476874,
"fullName": "Olli Maatta",
"link": "/api/v1/people/8476874"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8481640,
"fullName": "Lean Bergmann",
"link": "/api/v1/people/8481640"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI463",
"eventTypeId": "BLOCKED_SHOT",
"description": "Lean Bergmann shot blocked shot by Olli Maatta"
},
"about": {
"eventIdx": 215,
"eventId": 463,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "18:20",
"periodTimeRemaining": "01:40",
"dateTime": "2020-03-12T01:35:28Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": -76,
"y": -1
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8481640,
"fullName": "Lean Bergmann",
"link": "/api/v1/people/8481640"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8476886,
"fullName": "Slater Koekkoek",
"link": "/api/v1/people/8476886"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI423",
"eventTypeId": "HIT",
"description": "Lean Bergmann hit Slater Koekkoek"
},
"about": {
"eventIdx": 216,
"eventId": 423,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "18:22",
"periodTimeRemaining": "01:38",
"dateTime": "2020-03-12T01:35:30Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": -96,
"y": -11
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8476886,
"fullName": "Slater Koekkoek",
"link": "/api/v1/people/8476886"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8479580,
"fullName": "Dylan Gambrell",
"link": "/api/v1/people/8479580"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI464",
"eventTypeId": "BLOCKED_SHOT",
"description": "Dylan Gambrell shot blocked shot by Slater Koekkoek"
},
"about": {
"eventIdx": 217,
"eventId": 464,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "18:36",
"periodTimeRemaining": "01:24",
"dateTime": "2020-03-12T01:35:43Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": -64,
"y": 2
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8479423,
"fullName": "Alex Nylander",
"link": "/api/v1/people/8479423"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Giveaway",
"eventCode": "CHI424",
"eventTypeId": "GIVEAWAY",
"description": "Giveaway by Alex Nylander"
},
"about": {
"eventIdx": 218,
"eventId": 424,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "18:51",
"periodTimeRemaining": "01:09",
"dateTime": "2020-03-12T01:35:58Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": -55,
"y": 1
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8471709,
"fullName": "Marc-Edouard Vlasic",
"link": "/api/v1/people/8471709"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI465",
"eventTypeId": "SHOT",
"description": "Marc-Edouard Vlasic Wrist Shot saved by Corey Crawford",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 219,
"eventId": 465,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "19:12",
"periodTimeRemaining": "00:48",
"dateTime": "2020-03-12T01:36:20Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": -65,
"y": -26
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI425",
"eventTypeId": "STOP",
"description": "Goalie Stopped"
},
"about": {
"eventIdx": 220,
"eventId": 425,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "19:12",
"periodTimeRemaining": "00:48",
"dateTime": "2020-03-12T01:36:22Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8481516,
"fullName": "Joel Kellman",
"link": "/api/v1/people/8481516"
},
"playerType": "Winner"
},
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI426",
"eventTypeId": "FACEOFF",
"description": "Joel Kellman faceoff won against Kirby Dach"
},
"about": {
"eventIdx": 221,
"eventId": 426,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "19:12",
"periodTimeRemaining": "00:48",
"dateTime": "2020-03-12T01:36:47Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": -69,
"y": -22
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8475869,
"fullName": "Brandon Davidson",
"link": "/api/v1/people/8475869"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI466",
"eventTypeId": "SHOT",
"description": "Brandon Davidson Slap Shot saved by Corey Crawford",
"secondaryType": "Slap Shot"
},
"about": {
"eventIdx": 222,
"eventId": 466,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "19:16",
"periodTimeRemaining": "00:44",
"dateTime": "2020-03-12T01:36:57Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": -34,
"y": 2
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI427",
"eventTypeId": "STOP",
"description": "Goalie Stopped"
},
"about": {
"eventIdx": 223,
"eventId": 427,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "19:18",
"periodTimeRemaining": "00:42",
"dateTime": "2020-03-12T01:37:00Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Winner"
},
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI428",
"eventTypeId": "FACEOFF",
"description": "Evander Kane faceoff won against Kirby Dach"
},
"about": {
"eventIdx": 224,
"eventId": 428,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "19:18",
"periodTimeRemaining": "00:42",
"dateTime": "2020-03-12T01:37:13Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": -69,
"y": 22
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI467",
"eventTypeId": "SHOT",
"description": "Evander Kane Wrist Shot saved by Corey Crawford",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 225,
"eventId": 467,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "19:28",
"periodTimeRemaining": "00:32",
"dateTime": "2020-03-12T01:37:41Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": -77,
"y": 17
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8471709,
"fullName": "Marc-Edouard Vlasic",
"link": "/api/v1/people/8471709"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI468",
"eventTypeId": "SHOT",
"description": "Marc-Edouard Vlasic Wrist Shot saved by Corey Crawford",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 226,
"eventId": 468,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "19:32",
"periodTimeRemaining": "00:28",
"dateTime": "2020-03-12T01:37:44Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": -61,
"y": -21
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8479542,
"fullName": "Brandon Hagel",
"link": "/api/v1/people/8479542"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8471709,
"fullName": "Marc-Edouard Vlasic",
"link": "/api/v1/people/8471709"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI469",
"eventTypeId": "BLOCKED_SHOT",
"description": "Marc-Edouard Vlasic shot blocked shot by Brandon Hagel"
},
"about": {
"eventIdx": 227,
"eventId": 469,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "19:48",
"periodTimeRemaining": "00:12",
"dateTime": "2020-03-12T01:38:00Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": -54,
"y": -15
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Giveaway",
"eventCode": "CHI429",
"eventTypeId": "GIVEAWAY",
"description": "Giveaway by Kirby Dach"
},
"about": {
"eventIdx": 228,
"eventId": 429,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "19:51",
"periodTimeRemaining": "00:09",
"dateTime": "2020-03-12T01:38:04Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": -33,
"y": 40
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI430",
"eventTypeId": "STOP",
"description": "Offside"
},
"about": {
"eventIdx": 229,
"eventId": 430,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "19:59",
"periodTimeRemaining": "00:01",
"dateTime": "2020-03-12T01:38:14Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "Winner"
},
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI431",
"eventTypeId": "FACEOFF",
"description": "Kirby Dach faceoff won against Evander Kane"
},
"about": {
"eventIdx": 230,
"eventId": 431,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "19:59",
"periodTimeRemaining": "00:01",
"dateTime": "2020-03-12T01:38:25Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": 20,
"y": -22
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"result": {
"event": "Period End",
"eventCode": "CHI470",
"eventTypeId": "PERIOD_END",
"description": "End of 2nd Period"
},
"about": {
"eventIdx": 231,
"eventId": 470,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "20:00",
"periodTimeRemaining": "00:00",
"dateTime": "2020-03-12T01:38:54Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {}
},
{
"result": {
"event": "Period Official",
"eventCode": "CHI473",
"eventTypeId": "PERIOD_OFFICIAL",
"description": "Period Official"
},
"about": {
"eventIdx": 232,
"eventId": 473,
"period": 2,
"periodType": "REGULAR",
"ordinalNum": "2nd",
"periodTime": "20:00",
"periodTimeRemaining": "00:00",
"dateTime": "2020-03-12T01:38:59Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {}
},
{
"result": {
"event": "Period Ready",
"eventCode": "CHI474",
"eventTypeId": "PERIOD_READY",
"description": "Period Ready"
},
"about": {
"eventIdx": 233,
"eventId": 474,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "00:00",
"periodTimeRemaining": "20:00",
"dateTime": "2020-03-12T01:55:38Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {}
},
{
"result": {
"event": "Period Start",
"eventCode": "CHI475",
"eventTypeId": "PERIOD_START",
"description": "Period Start"
},
"about": {
"eventIdx": 234,
"eventId": 475,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "00:00",
"periodTimeRemaining": "20:00",
"dateTime": "2020-03-12T01:57:50Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604"
},
"playerType": "Winner"
},
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI476",
"eventTypeId": "FACEOFF",
"description": "Jonathan Toews faceoff won against Evander Kane"
},
"about": {
"eventIdx": 235,
"eventId": 476,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "00:00",
"periodTimeRemaining": "20:00",
"dateTime": "2020-03-12T01:57:50Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": 0,
"y": 0
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8470281,
"fullName": "Duncan Keith",
"link": "/api/v1/people/8470281"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI477",
"eventTypeId": "SHOT",
"description": "Duncan Keith Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 236,
"eventId": 477,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "00:09",
"periodTimeRemaining": "19:51",
"dateTime": "2020-03-12T01:58:05Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": 33,
"y": -21
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8470281,
"fullName": "Duncan Keith",
"link": "/api/v1/people/8470281"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Takeaway",
"eventCode": "CHI432",
"eventTypeId": "TAKEAWAY",
"description": "Takeaway by Duncan Keith"
},
"about": {
"eventIdx": 237,
"eventId": 432,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "00:17",
"periodTimeRemaining": "19:43",
"dateTime": "2020-03-12T01:58:14Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": 15,
"y": -21
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8478414,
"fullName": "Timo Meier",
"link": "/api/v1/people/8478414"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI478",
"eventTypeId": "SHOT",
"description": "Timo Meier Wrist Shot saved by Corey Crawford",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 238,
"eventId": 478,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "00:23",
"periodTimeRemaining": "19:37",
"dateTime": "2020-03-12T01:58:19Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": 47,
"y": -5
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI433",
"eventTypeId": "STOP",
"description": "Goalie Stopped"
},
"about": {
"eventIdx": 239,
"eventId": 433,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "00:24",
"periodTimeRemaining": "19:36",
"dateTime": "2020-03-12T01:58:22Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604"
},
"playerType": "Winner"
},
{
"player": {
"id": 8476474,
"fullName": "Stefan Noesen",
"link": "/api/v1/people/8476474"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI434",
"eventTypeId": "FACEOFF",
"description": "Jonathan Toews faceoff won against Stefan Noesen"
},
"about": {
"eventIdx": 240,
"eventId": 434,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "00:24",
"periodTimeRemaining": "19:36",
"dateTime": "2020-03-12T01:58:42Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": 69,
"y": -22
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8481516,
"fullName": "Joel Kellman",
"link": "/api/v1/people/8481516"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8470281,
"fullName": "Duncan Keith",
"link": "/api/v1/people/8470281"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI435",
"eventTypeId": "HIT",
"description": "Joel Kellman hit Duncan Keith"
},
"about": {
"eventIdx": 241,
"eventId": 435,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "00:28",
"periodTimeRemaining": "19:32",
"dateTime": "2020-03-12T01:58:53Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": 89,
"y": -30
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8471709,
"fullName": "Marc-Edouard Vlasic",
"link": "/api/v1/people/8471709"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI479",
"eventTypeId": "SHOT",
"description": "Marc-Edouard Vlasic Wrist Shot saved by Corey Crawford",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 242,
"eventId": 479,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "00:31",
"periodTimeRemaining": "19:29",
"dateTime": "2020-03-12T01:58:54Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": 42,
"y": 27
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8476474,
"fullName": "Stefan Noesen",
"link": "/api/v1/people/8476474"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI480",
"eventTypeId": "SHOT",
"description": "Stefan Noesen Tip-In saved by Corey Crawford",
"secondaryType": "Tip-In"
},
"about": {
"eventIdx": 243,
"eventId": 480,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "00:39",
"periodTimeRemaining": "19:21",
"dateTime": "2020-03-12T01:59:02Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": 77,
"y": -3
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8478099,
"fullName": "Kevin Labanc",
"link": "/api/v1/people/8478099"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI481",
"eventTypeId": "BLOCKED_SHOT",
"description": "Kevin Labanc shot blocked shot by Jonathan Toews"
},
"about": {
"eventIdx": 244,
"eventId": 481,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "01:13",
"periodTimeRemaining": "18:47",
"dateTime": "2020-03-12T01:59:36Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": 54,
"y": -21
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8479423,
"fullName": "Alex Nylander",
"link": "/api/v1/people/8479423"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Missed Shot",
"eventCode": "CHI482",
"eventTypeId": "MISSED_SHOT",
"description": "Alex Nylander Wide of Net"
},
"about": {
"eventIdx": 245,
"eventId": 482,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "01:21",
"periodTimeRemaining": "18:39",
"dateTime": "2020-03-12T01:59:45Z",
"goals": {
"away": 1,
"home": 3
}
},
"coordinates": {
"x": -80,
"y": 22
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8479423,
"fullName": "Alex Nylander",
"link": "/api/v1/people/8479423"
},
"playerType": "Scorer",
"seasonTotal": 10
},
{
"player": {
"id": 8478440,
"fullName": "Dylan Strome",
"link": "/api/v1/people/8478440"
},
"playerType": "Assist",
"seasonTotal": 26
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Goal",
"eventCode": "CHI483",
"eventTypeId": "GOAL",
"description": "Alex Nylander (10) Slap Shot, assists: Dylan Strome (26)",
"secondaryType": "Slap Shot",
"strength": {
"code": "EVEN",
"name": "Even"
},
"gameWinningGoal": false,
"emptyNet": false
},
"about": {
"eventIdx": 246,
"eventId": 483,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "01:31",
"periodTimeRemaining": "18:29",
"dateTime": "2020-03-12T01:59:56Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {
"x": -63,
"y": 1
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8480965,
"fullName": "Antti Suomela",
"link": "/api/v1/people/8480965"
},
"playerType": "Winner"
},
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI436",
"eventTypeId": "FACEOFF",
"description": "Antti Suomela faceoff won against Kirby Dach"
},
"about": {
"eventIdx": 247,
"eventId": 436,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "01:31",
"periodTimeRemaining": "18:29",
"dateTime": "2020-03-12T02:00:32Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {
"x": 0,
"y": 0
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8479523,
"fullName": "Lucas Carlsson",
"link": "/api/v1/people/8479523"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8479580,
"fullName": "Dylan Gambrell",
"link": "/api/v1/people/8479580"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI484",
"eventTypeId": "BLOCKED_SHOT",
"description": "Dylan Gambrell shot blocked shot by Lucas Carlsson"
},
"about": {
"eventIdx": 248,
"eventId": 484,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "01:49",
"periodTimeRemaining": "18:11",
"dateTime": "2020-03-12T02:00:54Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {
"x": 75,
"y": -5
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8475869,
"fullName": "Brandon Davidson",
"link": "/api/v1/people/8475869"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8477330,
"fullName": "Dominik Kubalik",
"link": "/api/v1/people/8477330"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI437",
"eventTypeId": "HIT",
"description": "Brandon Davidson hit Dominik Kubalik"
},
"about": {
"eventIdx": 249,
"eventId": 437,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "01:56",
"periodTimeRemaining": "18:04",
"dateTime": "2020-03-12T02:01:01Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {
"x": -48,
"y": -39
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8471709,
"fullName": "Marc-Edouard Vlasic",
"link": "/api/v1/people/8471709"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Giveaway",
"eventCode": "CHI438",
"eventTypeId": "GIVEAWAY",
"description": "Giveaway by Marc-Edouard Vlasic"
},
"about": {
"eventIdx": 250,
"eventId": 438,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "02:37",
"periodTimeRemaining": "17:23",
"dateTime": "2020-03-12T02:01:42Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {
"x": -85,
"y": 38
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8480144,
"fullName": "David Kampf",
"link": "/api/v1/people/8480144"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI485",
"eventTypeId": "SHOT",
"description": "David Kampf Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 251,
"eventId": 485,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "02:40",
"periodTimeRemaining": "17:20",
"dateTime": "2020-03-12T02:01:45Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {
"x": -56,
"y": 18
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8478146,
"fullName": "Matthew Highmore",
"link": "/api/v1/people/8478146"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8479393,
"fullName": "Noah Gregor",
"link": "/api/v1/people/8479393"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI439",
"eventTypeId": "HIT",
"description": "Matthew Highmore hit Noah Gregor"
},
"about": {
"eventIdx": 252,
"eventId": 439,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "02:50",
"periodTimeRemaining": "17:10",
"dateTime": "2020-03-12T02:01:55Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {
"x": -7,
"y": -40
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8479393,
"fullName": "Noah Gregor",
"link": "/api/v1/people/8479393"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8476886,
"fullName": "Slater Koekkoek",
"link": "/api/v1/people/8476886"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI440",
"eventTypeId": "HIT",
"description": "Noah Gregor hit Slater Koekkoek"
},
"about": {
"eventIdx": 253,
"eventId": 440,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "02:56",
"periodTimeRemaining": "17:04",
"dateTime": "2020-03-12T02:02:01Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {
"x": 30,
"y": -39
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8470613,
"fullName": "Brent Burns",
"link": "/api/v1/people/8470613"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI486",
"eventTypeId": "BLOCKED_SHOT",
"description": "Jonathan Toews shot blocked shot by Brent Burns"
},
"about": {
"eventIdx": 254,
"eventId": 486,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "03:15",
"periodTimeRemaining": "16:45",
"dateTime": "2020-03-12T02:02:20Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {
"x": -72,
"y": -14
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI441",
"eventTypeId": "STOP",
"description": "Hand Pass"
},
"about": {
"eventIdx": 255,
"eventId": 441,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "03:29",
"periodTimeRemaining": "16:31",
"dateTime": "2020-03-12T02:02:37Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604"
},
"playerType": "Winner"
},
{
"player": {
"id": 8466138,
"fullName": "Joe Thornton",
"link": "/api/v1/people/8466138"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI442",
"eventTypeId": "FACEOFF",
"description": "Jonathan Toews faceoff won against Joe Thornton"
},
"about": {
"eventIdx": 256,
"eventId": 442,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "03:29",
"periodTimeRemaining": "16:31",
"dateTime": "2020-03-12T02:03:04Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {
"x": 0,
"y": 0
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8470613,
"fullName": "Brent Burns",
"link": "/api/v1/people/8470613"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI487",
"eventTypeId": "SHOT",
"description": "Brent Burns Wrist Shot saved by Corey Crawford",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 257,
"eventId": 487,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "03:47",
"periodTimeRemaining": "16:13",
"dateTime": "2020-03-12T02:03:23Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {
"x": 47,
"y": 11
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8479337,
"fullName": "Alex DeBrincat",
"link": "/api/v1/people/8479337"
},
"playerType": "PenaltyOn"
},
{
"player": {
"id": 8466138,
"fullName": "Joe Thornton",
"link": "/api/v1/people/8466138"
},
"playerType": "DrewBy"
}
],
"result": {
"event": "Penalty",
"eventCode": "CHI488",
"eventTypeId": "PENALTY",
"description": "Alex DeBrincat Hooking against Joe Thornton",
"secondaryType": "Hooking",
"penaltySeverity": "Minor",
"penaltyMinutes": 2
},
"about": {
"eventIdx": 258,
"eventId": 488,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "03:47",
"periodTimeRemaining": "16:13",
"dateTime": "2020-03-12T02:03:33Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {
"x": 81,
"y": 27
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Winner"
},
{
"player": {
"id": 8477846,
"fullName": "Ryan Carpenter",
"link": "/api/v1/people/8477846"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI443",
"eventTypeId": "FACEOFF",
"description": "Evander Kane faceoff won against Ryan Carpenter"
},
"about": {
"eventIdx": 259,
"eventId": 443,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "03:47",
"periodTimeRemaining": "16:13",
"dateTime": "2020-03-12T02:03:52Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {
"x": 69,
"y": 22
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8476473,
"fullName": "Connor Murphy",
"link": "/api/v1/people/8476473"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8478414,
"fullName": "Timo Meier",
"link": "/api/v1/people/8478414"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI490",
"eventTypeId": "BLOCKED_SHOT",
"description": "Timo Meier shot blocked shot by Connor Murphy"
},
"about": {
"eventIdx": 260,
"eventId": 490,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "04:02",
"periodTimeRemaining": "15:58",
"dateTime": "2020-03-12T02:04:17Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {
"x": 70,
"y": 7
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8470281,
"fullName": "Duncan Keith",
"link": "/api/v1/people/8470281"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8466138,
"fullName": "Joe Thornton",
"link": "/api/v1/people/8466138"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI491",
"eventTypeId": "BLOCKED_SHOT",
"description": "Joe Thornton shot blocked shot by Duncan Keith"
},
"about": {
"eventIdx": 261,
"eventId": 491,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "04:27",
"periodTimeRemaining": "15:33",
"dateTime": "2020-03-12T02:05:00Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {
"x": 82,
"y": -6
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8470613,
"fullName": "Brent Burns",
"link": "/api/v1/people/8470613"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Takeaway",
"eventCode": "CHI444",
"eventTypeId": "TAKEAWAY",
"description": "Takeaway by Brent Burns"
},
"about": {
"eventIdx": 262,
"eventId": 444,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "04:36",
"periodTimeRemaining": "15:24",
"dateTime": "2020-03-12T02:04:51Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {
"x": -79,
"y": 13
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8476874,
"fullName": "Olli Maatta",
"link": "/api/v1/people/8476874"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Giveaway",
"eventCode": "CHI445",
"eventTypeId": "GIVEAWAY",
"description": "Giveaway by Olli Maatta"
},
"about": {
"eventIdx": 263,
"eventId": 445,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "05:15",
"periodTimeRemaining": "14:45",
"dateTime": "2020-03-12T02:05:30Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {
"x": 95,
"y": -21
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8479393,
"fullName": "Noah Gregor",
"link": "/api/v1/people/8479393"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI492",
"eventTypeId": "SHOT",
"description": "Noah Gregor Wrist Shot saved by Corey Crawford",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 264,
"eventId": 492,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "05:19",
"periodTimeRemaining": "14:41",
"dateTime": "2020-03-12T02:05:34Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {
"x": 37,
"y": -31
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8476886,
"fullName": "Slater Koekkoek",
"link": "/api/v1/people/8476886"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8476474,
"fullName": "Stefan Noesen",
"link": "/api/v1/people/8476474"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI446",
"eventTypeId": "HIT",
"description": "Slater Koekkoek hit Stefan Noesen"
},
"about": {
"eventIdx": 265,
"eventId": 446,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "05:20",
"periodTimeRemaining": "14:40",
"dateTime": "2020-03-12T02:05:35Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {
"x": 81,
"y": -5
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8481640,
"fullName": "Lean Bergmann",
"link": "/api/v1/people/8481640"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8480144,
"fullName": "David Kampf",
"link": "/api/v1/people/8480144"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI447",
"eventTypeId": "HIT",
"description": "Lean Bergmann hit David Kampf"
},
"about": {
"eventIdx": 266,
"eventId": 447,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "05:38",
"periodTimeRemaining": "14:22",
"dateTime": "2020-03-12T02:05:53Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {
"x": 47,
"y": -37
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8481640,
"fullName": "Lean Bergmann",
"link": "/api/v1/people/8481640"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8479523,
"fullName": "Lucas Carlsson",
"link": "/api/v1/people/8479523"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI448",
"eventTypeId": "HIT",
"description": "Lean Bergmann hit Lucas Carlsson"
},
"about": {
"eventIdx": 267,
"eventId": 448,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "06:21",
"periodTimeRemaining": "13:39",
"dateTime": "2020-03-12T02:06:36Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {
"x": 92,
"y": -28
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8474141,
"fullName": "Patrick Kane",
"link": "/api/v1/people/8474141"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI493",
"eventTypeId": "SHOT",
"description": "Patrick Kane Backhand saved by Aaron Dell",
"secondaryType": "Backhand"
},
"about": {
"eventIdx": 268,
"eventId": 493,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "06:28",
"periodTimeRemaining": "13:32",
"dateTime": "2020-03-12T02:06:43Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {
"x": -81,
"y": 15
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI494",
"eventTypeId": "SHOT",
"description": "Evander Kane Wrist Shot saved by Corey Crawford",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 269,
"eventId": 494,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "06:35",
"periodTimeRemaining": "13:25",
"dateTime": "2020-03-12T02:06:51Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {
"x": 75,
"y": 27
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI449",
"eventTypeId": "STOP",
"description": "Goalie Stopped"
},
"about": {
"eventIdx": 270,
"eventId": 449,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "06:36",
"periodTimeRemaining": "13:24",
"dateTime": "2020-03-12T02:06:53Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Winner"
},
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI450",
"eventTypeId": "FACEOFF",
"description": "Evander Kane faceoff won against Kirby Dach"
},
"about": {
"eventIdx": 271,
"eventId": 450,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "06:36",
"periodTimeRemaining": "13:24",
"dateTime": "2020-03-12T02:08:51Z",
"goals": {
"away": 1,
"home": 4
}
},
"coordinates": {
"x": 69,
"y": 22
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8478414,
"fullName": "Timo Meier",
"link": "/api/v1/people/8478414"
},
"playerType": "Scorer",
"seasonTotal": 22
},
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Assist",
"seasonTotal": 21
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Goal",
"eventCode": "CHI495",
"eventTypeId": "GOAL",
"description": "Timo Meier (22) Wrist Shot, assists: Evander Kane (21)",
"secondaryType": "Wrist Shot",
"strength": {
"code": "EVEN",
"name": "Even"
},
"gameWinningGoal": false,
"emptyNet": false
},
"about": {
"eventIdx": 272,
"eventId": 495,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "06:39",
"periodTimeRemaining": "13:21",
"dateTime": "2020-03-12T02:09:17Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": 64,
"y": 12
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "Winner"
},
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI601",
"eventTypeId": "FACEOFF",
"description": "Kirby Dach faceoff won against Evander Kane"
},
"about": {
"eventIdx": 273,
"eventId": 601,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "06:39",
"periodTimeRemaining": "13:21",
"dateTime": "2020-03-12T02:09:40Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": 0,
"y": 0
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8478414,
"fullName": "Timo Meier",
"link": "/api/v1/people/8478414"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI602",
"eventTypeId": "HIT",
"description": "Timo Meier hit Kirby Dach"
},
"about": {
"eventIdx": 274,
"eventId": 602,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "07:11",
"periodTimeRemaining": "12:49",
"dateTime": "2020-03-12T02:10:19Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": -63,
"y": 40
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8476874,
"fullName": "Olli Maatta",
"link": "/api/v1/people/8476874"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI603",
"eventTypeId": "HIT",
"description": "Evander Kane hit Olli Maatta"
},
"about": {
"eventIdx": 275,
"eventId": 603,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "07:20",
"periodTimeRemaining": "12:40",
"dateTime": "2020-03-12T02:10:28Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": 85,
"y": -36
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI496",
"eventTypeId": "SHOT",
"description": "Jonathan Toews Backhand saved by Aaron Dell",
"secondaryType": "Backhand"
},
"about": {
"eventIdx": 276,
"eventId": 496,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "07:33",
"periodTimeRemaining": "12:27",
"dateTime": "2020-03-12T02:10:41Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": -80,
"y": 9
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8478146,
"fullName": "Matthew Highmore",
"link": "/api/v1/people/8478146"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8478099,
"fullName": "Kevin Labanc",
"link": "/api/v1/people/8478099"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI604",
"eventTypeId": "HIT",
"description": "Matthew Highmore hit Kevin Labanc"
},
"about": {
"eventIdx": 277,
"eventId": 604,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "08:18",
"periodTimeRemaining": "11:42",
"dateTime": "2020-03-12T02:11:26Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": 17,
"y": 1
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8477922,
"fullName": "Melker Karlsson",
"link": "/api/v1/people/8477922"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Missed Shot",
"eventCode": "CHI498",
"eventTypeId": "MISSED_SHOT",
"description": "Melker Karlsson Wide of Net"
},
"about": {
"eventIdx": 278,
"eventId": 498,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "08:20",
"periodTimeRemaining": "11:40",
"dateTime": "2020-03-12T02:11:29Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": 59,
"y": 33
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8475869,
"fullName": "Brandon Davidson",
"link": "/api/v1/people/8475869"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI499",
"eventTypeId": "SHOT",
"description": "Brandon Davidson Wrist Shot saved by Corey Crawford",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 279,
"eventId": 499,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "08:27",
"periodTimeRemaining": "11:33",
"dateTime": "2020-03-12T02:11:36Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": 47,
"y": -36
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8476473,
"fullName": "Connor Murphy",
"link": "/api/v1/people/8476473"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8477922,
"fullName": "Melker Karlsson",
"link": "/api/v1/people/8477922"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI605",
"eventTypeId": "HIT",
"description": "Connor Murphy hit Melker Karlsson"
},
"about": {
"eventIdx": 280,
"eventId": 605,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "08:35",
"periodTimeRemaining": "11:25",
"dateTime": "2020-03-12T02:11:43Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": 85,
"y": -32
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8475869,
"fullName": "Brandon Davidson",
"link": "/api/v1/people/8475869"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Missed Shot",
"eventCode": "CHI500",
"eventTypeId": "MISSED_SHOT",
"description": "Brandon Davidson Wide of Net"
},
"about": {
"eventIdx": 281,
"eventId": 500,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "08:42",
"periodTimeRemaining": "11:18",
"dateTime": "2020-03-12T02:11:50Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": 39,
"y": -8
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8478146,
"fullName": "Matthew Highmore",
"link": "/api/v1/people/8478146"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Missed Shot",
"eventCode": "CHI651",
"eventTypeId": "MISSED_SHOT",
"description": "Matthew Highmore Over Net"
},
"about": {
"eventIdx": 282,
"eventId": 651,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "08:55",
"periodTimeRemaining": "11:05",
"dateTime": "2020-03-12T02:12:03Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": -73,
"y": -1
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8479423,
"fullName": "Alex Nylander",
"link": "/api/v1/people/8479423"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Missed Shot",
"eventCode": "CHI652",
"eventTypeId": "MISSED_SHOT",
"description": "Alex Nylander Wide of Net"
},
"about": {
"eventIdx": 283,
"eventId": 652,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "09:07",
"periodTimeRemaining": "10:53",
"dateTime": "2020-03-12T02:12:16Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": -38,
"y": 1
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI606",
"eventTypeId": "STOP",
"description": "Puck in Netting"
},
"about": {
"eventIdx": 285,
"eventId": 606,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "09:33",
"periodTimeRemaining": "10:27",
"dateTime": "2020-03-12T02:12:43Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8470613,
"fullName": "Brent Burns",
"link": "/api/v1/people/8470613"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8474141,
"fullName": "Patrick Kane",
"link": "/api/v1/people/8474141"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI653",
"eventTypeId": "BLOCKED_SHOT",
"description": "Patrick Kane shot blocked shot by Brent Burns"
},
"about": {
"eventIdx": 284,
"eventId": 653,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "09:33",
"periodTimeRemaining": "10:27",
"dateTime": "2020-03-12T02:12:43Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": -65,
"y": 10
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Winner"
},
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI607",
"eventTypeId": "FACEOFF",
"description": "Evander Kane faceoff won against Kirby Dach"
},
"about": {
"eventIdx": 286,
"eventId": 607,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "09:33",
"periodTimeRemaining": "10:27",
"dateTime": "2020-03-12T02:13:02Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": -69,
"y": 22
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8478414,
"fullName": "Timo Meier",
"link": "/api/v1/people/8478414"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI608",
"eventTypeId": "HIT",
"description": "Kirby Dach hit Timo Meier"
},
"about": {
"eventIdx": 287,
"eventId": 608,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "10:07",
"periodTimeRemaining": "09:53",
"dateTime": "2020-03-12T02:13:49Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": 67,
"y": 40
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI654",
"eventTypeId": "SHOT",
"description": "Evander Kane Wrist Shot saved by Corey Crawford",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 288,
"eventId": 654,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "10:10",
"periodTimeRemaining": "09:50",
"dateTime": "2020-03-12T02:13:53Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": 83,
"y": -13
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8476438,
"fullName": "Brandon Saad",
"link": "/api/v1/people/8476438"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Missed Shot",
"eventCode": "CHI655",
"eventTypeId": "MISSED_SHOT",
"description": "Brandon Saad Goalpost"
},
"about": {
"eventIdx": 289,
"eventId": 655,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "10:38",
"periodTimeRemaining": "09:22",
"dateTime": "2020-03-12T02:14:21Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": -64,
"y": 19
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8478099,
"fullName": "Kevin Labanc",
"link": "/api/v1/people/8478099"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Missed Shot",
"eventCode": "CHI656",
"eventTypeId": "MISSED_SHOT",
"description": "Kevin Labanc Wide of Net"
},
"about": {
"eventIdx": 290,
"eventId": 656,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "11:08",
"periodTimeRemaining": "08:52",
"dateTime": "2020-03-12T02:14:51Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": 56,
"y": -1
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8476473,
"fullName": "Connor Murphy",
"link": "/api/v1/people/8476473"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Giveaway",
"eventCode": "CHI609",
"eventTypeId": "GIVEAWAY",
"description": "Giveaway by Connor Murphy"
},
"about": {
"eventIdx": 291,
"eventId": 609,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "11:22",
"periodTimeRemaining": "08:38",
"dateTime": "2020-03-12T02:15:05Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": -36,
"y": -36
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Giveaway",
"eventCode": "CHI610",
"eventTypeId": "GIVEAWAY",
"description": "Giveaway by Corey Crawford"
},
"about": {
"eventIdx": 292,
"eventId": 610,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "11:32",
"periodTimeRemaining": "08:28",
"dateTime": "2020-03-12T02:15:14Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": 85,
"y": 7
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8477922,
"fullName": "Melker Karlsson",
"link": "/api/v1/people/8477922"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI657",
"eventTypeId": "SHOT",
"description": "Melker Karlsson Tip-In saved by Corey Crawford",
"secondaryType": "Tip-In"
},
"about": {
"eventIdx": 293,
"eventId": 657,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "11:34",
"periodTimeRemaining": "08:26",
"dateTime": "2020-03-12T02:15:17Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": 72,
"y": -5
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8478440,
"fullName": "Dylan Strome",
"link": "/api/v1/people/8478440"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI658",
"eventTypeId": "SHOT",
"description": "Dylan Strome Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 294,
"eventId": 658,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "12:07",
"periodTimeRemaining": "07:53",
"dateTime": "2020-03-12T02:15:49Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": -85,
"y": -18
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI611",
"eventTypeId": "STOP",
"description": "Goalie Stopped"
},
"about": {
"eventIdx": 295,
"eventId": 611,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "12:07",
"periodTimeRemaining": "07:53",
"dateTime": "2020-03-12T02:15:51Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8478440,
"fullName": "Dylan Strome",
"link": "/api/v1/people/8478440"
},
"playerType": "Winner"
},
{
"player": {
"id": 8479580,
"fullName": "Dylan Gambrell",
"link": "/api/v1/people/8479580"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI612",
"eventTypeId": "FACEOFF",
"description": "Dylan Strome faceoff won against Dylan Gambrell"
},
"about": {
"eventIdx": 296,
"eventId": 612,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "12:07",
"periodTimeRemaining": "07:53",
"dateTime": "2020-03-12T02:17:43Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": -69,
"y": -22
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8479423,
"fullName": "Alex Nylander",
"link": "/api/v1/people/8479423"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8478414,
"fullName": "Timo Meier",
"link": "/api/v1/people/8478414"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI659",
"eventTypeId": "BLOCKED_SHOT",
"description": "Timo Meier shot blocked shot by Alex Nylander"
},
"about": {
"eventIdx": 297,
"eventId": 659,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "12:35",
"periodTimeRemaining": "07:25",
"dateTime": "2020-03-12T02:18:38Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": 49,
"y": -24
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8480814,
"fullName": "Nicolas Beaudin",
"link": "/api/v1/people/8480814"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI613",
"eventTypeId": "HIT",
"description": "Nicolas Beaudin hit Evander Kane"
},
"about": {
"eventIdx": 298,
"eventId": 613,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "12:42",
"periodTimeRemaining": "07:18",
"dateTime": "2020-03-12T02:18:45Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": 68,
"y": 36
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8478146,
"fullName": "Matthew Highmore",
"link": "/api/v1/people/8478146"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI660",
"eventTypeId": "SHOT",
"description": "Matthew Highmore Backhand saved by Aaron Dell",
"secondaryType": "Backhand"
},
"about": {
"eventIdx": 299,
"eventId": 660,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "13:31",
"periodTimeRemaining": "06:29",
"dateTime": "2020-03-12T02:19:35Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": -72,
"y": -1
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI614",
"eventTypeId": "STOP",
"description": "Goalie Stopped"
},
"about": {
"eventIdx": 300,
"eventId": 614,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "13:31",
"periodTimeRemaining": "06:29",
"dateTime": "2020-03-12T02:19:37Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8481516,
"fullName": "Joel Kellman",
"link": "/api/v1/people/8481516"
},
"playerType": "Winner"
},
{
"player": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI615",
"eventTypeId": "FACEOFF",
"description": "Joel Kellman faceoff won against Jonathan Toews"
},
"about": {
"eventIdx": 301,
"eventId": 615,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "13:31",
"periodTimeRemaining": "06:29",
"dateTime": "2020-03-12T02:19:57Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": -69,
"y": -22
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI616",
"eventTypeId": "STOP",
"description": "Offside"
},
"about": {
"eventIdx": 302,
"eventId": 616,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "14:37",
"periodTimeRemaining": "05:23",
"dateTime": "2020-03-12T02:21:16Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "Winner"
},
{
"player": {
"id": 8479393,
"fullName": "Noah Gregor",
"link": "/api/v1/people/8479393"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI617",
"eventTypeId": "FACEOFF",
"description": "Kirby Dach faceoff won against Noah Gregor"
},
"about": {
"eventIdx": 303,
"eventId": 617,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "14:37",
"periodTimeRemaining": "05:23",
"dateTime": "2020-03-12T02:23:11Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": 20,
"y": -22
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8470613,
"fullName": "Brent Burns",
"link": "/api/v1/people/8470613"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI661",
"eventTypeId": "SHOT",
"description": "Brent Burns Slap Shot saved by Corey Crawford",
"secondaryType": "Slap Shot"
},
"about": {
"eventIdx": 304,
"eventId": 661,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "14:56",
"periodTimeRemaining": "05:04",
"dateTime": "2020-03-12T02:23:52Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": 33,
"y": 22
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI662",
"eventTypeId": "SHOT",
"description": "Kirby Dach Slap Shot saved by Aaron Dell",
"secondaryType": "Slap Shot"
},
"about": {
"eventIdx": 305,
"eventId": 662,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "15:06",
"periodTimeRemaining": "04:54",
"dateTime": "2020-03-12T02:24:02Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": -76,
"y": 17
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8470613,
"fullName": "Brent Burns",
"link": "/api/v1/people/8470613"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI618",
"eventTypeId": "HIT",
"description": "Brent Burns hit Kirby Dach"
},
"about": {
"eventIdx": 307,
"eventId": 618,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "15:13",
"periodTimeRemaining": "04:47",
"dateTime": "2020-03-12T02:24:09Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": -88,
"y": -31
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8479542,
"fullName": "Brandon Hagel",
"link": "/api/v1/people/8479542"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI663",
"eventTypeId": "SHOT",
"description": "Brandon Hagel Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 306,
"eventId": 663,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "15:13",
"periodTimeRemaining": "04:47",
"dateTime": "2020-03-12T02:24:09Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": -77,
"y": -10
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8479423,
"fullName": "Alex Nylander",
"link": "/api/v1/people/8479423"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Takeaway",
"eventCode": "CHI619",
"eventTypeId": "TAKEAWAY",
"description": "Takeaway by Alex Nylander"
},
"about": {
"eventIdx": 308,
"eventId": 619,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "16:06",
"periodTimeRemaining": "03:54",
"dateTime": "2020-03-12T02:25:25Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": 11,
"y": 37
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8474141,
"fullName": "Patrick Kane",
"link": "/api/v1/people/8474141"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI664",
"eventTypeId": "SHOT",
"description": "Patrick Kane Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 309,
"eventId": 664,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "16:17",
"periodTimeRemaining": "03:43",
"dateTime": "2020-03-12T02:25:16Z",
"goals": {
"away": 2,
"home": 4
}
},
"coordinates": {
"x": -69,
"y": -2
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8474141,
"fullName": "Patrick Kane",
"link": "/api/v1/people/8474141"
},
"playerType": "Scorer",
"seasonTotal": 33
},
{
"player": {
"id": 8476886,
"fullName": "Slater Koekkoek",
"link": "/api/v1/people/8476886"
},
"playerType": "Assist",
"seasonTotal": 9
},
{
"player": {
"id": 8479423,
"fullName": "Alex Nylander",
"link": "/api/v1/people/8479423"
},
"playerType": "Assist",
"seasonTotal": 16
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Goal",
"eventCode": "CHI665",
"eventTypeId": "GOAL",
"description": "Patrick Kane (33) Wrist Shot, assists: Slater Koekkoek (9), Alex Nylander (16)",
"secondaryType": "Wrist Shot",
"strength": {
"code": "EVEN",
"name": "Even"
},
"gameWinningGoal": false,
"emptyNet": false
},
"about": {
"eventIdx": 310,
"eventId": 665,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "16:19",
"periodTimeRemaining": "03:41",
"dateTime": "2020-03-12T02:25:21Z",
"goals": {
"away": 2,
"home": 5
}
},
"coordinates": {
"x": -82,
"y": 4
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8477846,
"fullName": "Ryan Carpenter",
"link": "/api/v1/people/8477846"
},
"playerType": "Winner"
},
{
"player": {
"id": 8481516,
"fullName": "Joel Kellman",
"link": "/api/v1/people/8481516"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI620",
"eventTypeId": "FACEOFF",
"description": "Ryan Carpenter faceoff won against Joel Kellman"
},
"about": {
"eventIdx": 311,
"eventId": 620,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "16:19",
"periodTimeRemaining": "03:41",
"dateTime": "2020-03-12T02:25:57Z",
"goals": {
"away": 2,
"home": 5
}
},
"coordinates": {
"x": 0,
"y": 0
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8476474,
"fullName": "Stefan Noesen",
"link": "/api/v1/people/8476474"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8478146,
"fullName": "Matthew Highmore",
"link": "/api/v1/people/8478146"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI621",
"eventTypeId": "HIT",
"description": "Stefan Noesen hit Matthew Highmore"
},
"about": {
"eventIdx": 312,
"eventId": 621,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "16:32",
"periodTimeRemaining": "03:28",
"dateTime": "2020-03-12T02:26:15Z",
"goals": {
"away": 2,
"home": 5
}
},
"coordinates": {
"x": 13,
"y": -39
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8476886,
"fullName": "Slater Koekkoek",
"link": "/api/v1/people/8476886"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8475869,
"fullName": "Brandon Davidson",
"link": "/api/v1/people/8475869"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI666",
"eventTypeId": "BLOCKED_SHOT",
"description": "Brandon Davidson shot blocked shot by Slater Koekkoek"
},
"about": {
"eventIdx": 313,
"eventId": 666,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "16:38",
"periodTimeRemaining": "03:22",
"dateTime": "2020-03-12T02:26:22Z",
"goals": {
"away": 2,
"home": 5
}
},
"coordinates": {
"x": 60,
"y": 6
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8477922,
"fullName": "Melker Karlsson",
"link": "/api/v1/people/8477922"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Takeaway",
"eventCode": "CHI622",
"eventTypeId": "TAKEAWAY",
"description": "Takeaway by Melker Karlsson"
},
"about": {
"eventIdx": 314,
"eventId": 622,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "16:46",
"periodTimeRemaining": "03:14",
"dateTime": "2020-03-12T02:26:30Z",
"goals": {
"away": 2,
"home": 5
}
},
"coordinates": {
"x": -21,
"y": -12
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8476438,
"fullName": "Brandon Saad",
"link": "/api/v1/people/8476438"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8481812,
"fullName": "Nikolai Knyzhov",
"link": "/api/v1/people/8481812"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI667",
"eventTypeId": "BLOCKED_SHOT",
"description": "Nikolai Knyzhov shot blocked shot by Brandon Saad"
},
"about": {
"eventIdx": 315,
"eventId": 667,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "17:11",
"periodTimeRemaining": "02:49",
"dateTime": "2020-03-12T02:26:55Z",
"goals": {
"away": 2,
"home": 5
}
},
"coordinates": {
"x": 55,
"y": 12
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"result": {
"event": "Stoppage",
"eventCode": "CHI623",
"eventTypeId": "STOP",
"description": "Puck in Netting"
},
"about": {
"eventIdx": 316,
"eventId": 623,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "17:11",
"periodTimeRemaining": "02:49",
"dateTime": "2020-03-12T02:26:56Z",
"goals": {
"away": 2,
"home": 5
}
},
"coordinates": {}
},
{
"players": [
{
"player": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604"
},
"playerType": "Winner"
},
{
"player": {
"id": 8480965,
"fullName": "Antti Suomela",
"link": "/api/v1/people/8480965"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI624",
"eventTypeId": "FACEOFF",
"description": "Jonathan Toews faceoff won against Antti Suomela"
},
"about": {
"eventIdx": 317,
"eventId": 624,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "17:11",
"periodTimeRemaining": "02:49",
"dateTime": "2020-03-12T02:27:13Z",
"goals": {
"away": 2,
"home": 5
}
},
"coordinates": {
"x": 69,
"y": 22
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8479337,
"fullName": "Alex DeBrincat",
"link": "/api/v1/people/8479337"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI668",
"eventTypeId": "SHOT",
"description": "Alex DeBrincat Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 318,
"eventId": 668,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "17:40",
"periodTimeRemaining": "02:20",
"dateTime": "2020-03-12T02:27:48Z",
"goals": {
"away": 2,
"home": 5
}
},
"coordinates": {
"x": -65,
"y": 13
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8477330,
"fullName": "Dominik Kubalik",
"link": "/api/v1/people/8477330"
},
"playerType": "Scorer",
"seasonTotal": 30
},
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "Assist",
"seasonTotal": 15
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Goal",
"eventCode": "CHI669",
"eventTypeId": "GOAL",
"description": "Dominik Kubalik (30) Slap Shot, assists: Kirby Dach (15)",
"secondaryType": "Slap Shot",
"strength": {
"code": "EVEN",
"name": "Even"
},
"gameWinningGoal": false,
"emptyNet": false
},
"about": {
"eventIdx": 319,
"eventId": 669,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "18:03",
"periodTimeRemaining": "01:57",
"dateTime": "2020-03-12T02:28:13Z",
"goals": {
"away": 2,
"home": 6
}
},
"coordinates": {
"x": -61,
"y": -11
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523"
},
"playerType": "Winner"
},
{
"player": {
"id": 8466138,
"fullName": "Joe Thornton",
"link": "/api/v1/people/8466138"
},
"playerType": "Loser"
}
],
"result": {
"event": "Faceoff",
"eventCode": "CHI625",
"eventTypeId": "FACEOFF",
"description": "Kirby Dach faceoff won against Joe Thornton"
},
"about": {
"eventIdx": 320,
"eventId": 625,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "18:03",
"periodTimeRemaining": "01:57",
"dateTime": "2020-03-12T02:29:02Z",
"goals": {
"away": 2,
"home": 6
}
},
"coordinates": {
"x": 0,
"y": 0
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8475869,
"fullName": "Brandon Davidson",
"link": "/api/v1/people/8475869"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8479542,
"fullName": "Brandon Hagel",
"link": "/api/v1/people/8479542"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI670",
"eventTypeId": "BLOCKED_SHOT",
"description": "Brandon Hagel shot blocked shot by Brandon Davidson"
},
"about": {
"eventIdx": 321,
"eventId": 670,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "18:21",
"periodTimeRemaining": "01:39",
"dateTime": "2020-03-12T02:29:16Z",
"goals": {
"away": 2,
"home": 6
}
},
"coordinates": {
"x": -69,
"y": 8
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8476886,
"fullName": "Slater Koekkoek",
"link": "/api/v1/people/8476886"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8478099,
"fullName": "Kevin Labanc",
"link": "/api/v1/people/8478099"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI671",
"eventTypeId": "BLOCKED_SHOT",
"description": "Kevin Labanc shot blocked shot by Slater Koekkoek"
},
"about": {
"eventIdx": 322,
"eventId": 671,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "18:41",
"periodTimeRemaining": "01:19",
"dateTime": "2020-03-12T02:29:36Z",
"goals": {
"away": 2,
"home": 6
}
},
"coordinates": {
"x": 73,
"y": 5
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "PlayerID"
}
],
"result": {
"event": "Giveaway",
"eventCode": "CHI626",
"eventTypeId": "GIVEAWAY",
"description": "Giveaway by Aaron Dell"
},
"about": {
"eventIdx": 323,
"eventId": 626,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "18:52",
"periodTimeRemaining": "01:08",
"dateTime": "2020-03-12T02:29:47Z",
"goals": {
"away": 2,
"home": 6
}
},
"coordinates": {
"x": -84,
"y": 10
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"triCode": "SJS"
}
},
{
"players": [
{
"player": {
"id": 8474141,
"fullName": "Patrick Kane",
"link": "/api/v1/people/8474141"
},
"playerType": "Shooter"
},
{
"player": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"playerType": "Goalie"
}
],
"result": {
"event": "Shot",
"eventCode": "CHI672",
"eventTypeId": "SHOT",
"description": "Patrick Kane Wrist Shot saved by Aaron Dell",
"secondaryType": "Wrist Shot"
},
"about": {
"eventIdx": 324,
"eventId": 672,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "18:57",
"periodTimeRemaining": "01:03",
"dateTime": "2020-03-12T02:29:52Z",
"goals": {
"away": 2,
"home": 6
}
},
"coordinates": {
"x": -82,
"y": -17
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8478440,
"fullName": "Dylan Strome",
"link": "/api/v1/people/8478440"
},
"playerType": "Blocker"
},
{
"player": {
"id": 8470613,
"fullName": "Brent Burns",
"link": "/api/v1/people/8470613"
},
"playerType": "Shooter"
}
],
"result": {
"event": "Blocked Shot",
"eventCode": "CHI673",
"eventTypeId": "BLOCKED_SHOT",
"description": "Brent Burns shot blocked shot by Dylan Strome"
},
"about": {
"eventIdx": 325,
"eventId": 673,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "19:17",
"periodTimeRemaining": "00:43",
"dateTime": "2020-03-12T02:30:13Z",
"goals": {
"away": 2,
"home": 6
}
},
"coordinates": {
"x": 29,
"y": 7
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"players": [
{
"player": {
"id": 8476886,
"fullName": "Slater Koekkoek",
"link": "/api/v1/people/8476886"
},
"playerType": "Hitter"
},
{
"player": {
"id": 8479580,
"fullName": "Dylan Gambrell",
"link": "/api/v1/people/8479580"
},
"playerType": "Hittee"
}
],
"result": {
"event": "Hit",
"eventCode": "CHI627",
"eventTypeId": "HIT",
"description": "Slater Koekkoek hit Dylan Gambrell"
},
"about": {
"eventIdx": 326,
"eventId": 627,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "19:34",
"periodTimeRemaining": "00:26",
"dateTime": "2020-03-12T02:30:30Z",
"goals": {
"away": 2,
"home": 6
}
},
"coordinates": {
"x": 99,
"y": 3
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"triCode": "CHI"
}
},
{
"result": {
"event": "Period End",
"eventCode": "CHI674",
"eventTypeId": "PERIOD_END",
"description": "End of 3rd Period"
},
"about": {
"eventIdx": 327,
"eventId": 674,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "20:00",
"periodTimeRemaining": "00:00",
"dateTime": "2020-03-12T02:30:59Z",
"goals": {
"away": 2,
"home": 6
}
},
"coordinates": {}
},
{
"result": {
"event": "Period Official",
"eventCode": "CHI677",
"eventTypeId": "PERIOD_OFFICIAL",
"description": "Period Official"
},
"about": {
"eventIdx": 328,
"eventId": 677,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "20:00",
"periodTimeRemaining": "00:00",
"dateTime": "2020-03-12T02:31:00Z",
"goals": {
"away": 2,
"home": 6
}
},
"coordinates": {}
},
{
"result": {
"event": "Game End",
"eventCode": "CHI678",
"eventTypeId": "GAME_END",
"description": "Game End"
},
"about": {
"eventIdx": 329,
"eventId": 678,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "20:00",
"periodTimeRemaining": "00:00",
"dateTime": "2020-03-12T02:31:02Z",
"goals": {
"away": 2,
"home": 6
}
},
"coordinates": {}
},
{
"result": {
"event": "Game Official",
"eventCode": "CHI679",
"eventTypeId": "GAME_OFFICIAL",
"description": "Game Official"
},
"about": {
"eventIdx": 330,
"eventId": 679,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "20:00",
"periodTimeRemaining": "00:00",
"dateTime": "2020-03-12T02:44:11Z",
"goals": {
"away": 2,
"home": 6
}
},
"coordinates": {}
}
],
"scoringPlays": [
64,
138,
205,
211,
246,
272,
310,
319
],
"penaltyPlays": [
53,
56,
134,
149,
202,
258
],
"playsByPeriod": [
{
"startIndex": 0,
"plays": [
0,
1,
2,
3,
4,
5,
6,
7,
8,
9,
10,
11,
12,
13,
14,
15,
16,
17,
18,
19,
20,
21,
22,
23,
24,
25,
26,
27,
28,
29,
30,
31,
32,
33,
34,
35,
36,
37,
38,
39,
40,
41,
42,
43,
44,
45,
46,
47,
48,
49,
50,
51,
52,
53,
54,
55,
56,
57,
58,
59,
60,
61,
62,
63,
64,
65,
66,
67,
68,
69,
70,
71,
72,
73,
74,
75,
76,
77,
78,
79,
80,
81,
82,
83,
84,
85,
86,
87,
88,
89,
90,
91,
92,
93,
94,
95,
96,
97,
98,
99,
100,
101,
102,
103,
104,
105,
106,
107,
108,
109,
110
],
"endIndex": 109
},
{
"startIndex": 111,
"plays": [
111,
112,
113,
114,
115,
116,
117,
118,
119,
120,
121,
122,
123,
124,
125,
126,
127,
128,
129,
130,
131,
132,
133,
134,
135,
136,
137,
138,
139,
140,
141,
142,
143,
144,
145,
146,
147,
148,
149,
150,
151,
152,
153,
154,
155,
156,
157,
158,
159,
160,
161,
162,
163,
164,
165,
166,
167,
168,
169,
170,
171,
172,
173,
174,
175,
176,
177,
178,
179,
180,
181,
182,
183,
184,
185,
186,
187,
188,
189,
190,
191,
192,
193,
194,
195,
196,
197,
198,
199,
200,
201,
202,
203,
204,
205,
206,
207,
208,
209,
210,
211,
212,
213,
214,
215,
216,
217,
218,
219,
220,
221,
222,
223,
224,
225,
226,
227,
228,
229,
230,
231,
232
],
"endIndex": 231
},
{
"startIndex": 233,
"plays": [
233,
234,
235,
236,
237,
238,
239,
240,
241,
242,
243,
244,
245,
246,
247,
248,
249,
250,
251,
252,
253,
254,
255,
256,
257,
258,
259,
260,
261,
262,
263,
264,
265,
266,
267,
268,
269,
270,
271,
272,
273,
274,
275,
276,
277,
278,
279,
280,
281,
282,
283,
284,
285,
286,
287,
288,
289,
290,
291,
292,
293,
294,
295,
296,
297,
298,
299,
300,
301,
302,
303,
304,
305,
306,
307,
308,
309,
310,
311,
312,
313,
314,
315,
316,
317,
318,
319,
320,
321,
322,
323,
324,
325,
326,
327,
328,
329,
330
],
"endIndex": 330
}
],
"currentPlay": {
"result": {
"event": "Game Official",
"eventCode": "CHI679",
"eventTypeId": "GAME_OFFICIAL",
"description": "Game Official"
},
"about": {
"eventIdx": 330,
"eventId": 679,
"period": 3,
"periodType": "REGULAR",
"ordinalNum": "3rd",
"periodTime": "20:00",
"periodTimeRemaining": "00:00",
"dateTime": "2020-03-12T02:44:11Z",
"goals": {
"away": 2,
"home": 6
}
},
"coordinates": {}
}
},
"linescore": {
"currentPeriod": 3,
"currentPeriodOrdinal": "3rd",
"currentPeriodTimeRemaining": "Final",
"periods": [
{
"periodType": "REGULAR",
"startTime": "2020-03-12T00:10:45Z",
"endTime": "2020-03-12T00:43:57Z",
"num": 1,
"ordinalNum": "1st",
"home": {
"goals": 0,
"shotsOnGoal": 14,
"rinkSide": "right"
},
"away": {
"goals": 1,
"shotsOnGoal": 15,
"rinkSide": "left"
}
},
{
"periodType": "REGULAR",
"startTime": "2020-03-12T01:02:21Z",
"endTime": "2020-03-12T01:38:54Z",
"num": 2,
"ordinalNum": "2nd",
"home": {
"goals": 3,
"shotsOnGoal": 17,
"rinkSide": "left"
},
"away": {
"goals": 0,
"shotsOnGoal": 10,
"rinkSide": "right"
}
},
{
"periodType": "REGULAR",
"startTime": "2020-03-12T01:57:50Z",
"endTime": "2020-03-12T02:30:59Z",
"num": 3,
"ordinalNum": "3rd",
"home": {
"goals": 3,
"shotsOnGoal": 14,
"rinkSide": "right"
},
"away": {
"goals": 1,
"shotsOnGoal": 11,
"rinkSide": "left"
}
}
],
"shootoutInfo": {
"away": {
"scores": 0,
"attempts": 0
},
"home": {
"scores": 0,
"attempts": 0
}
},
"teams": {
"home": {
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"abbreviation": "CHI",
"triCode": "CHI"
},
"goals": 6,
"shotsOnGoal": 45,
"goaliePulled": false,
"numSkaters": 5,
"powerPlay": false
},
"away": {
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"abbreviation": "SJS",
"triCode": "SJS"
},
"goals": 2,
"shotsOnGoal": 36,
"goaliePulled": false,
"numSkaters": 5,
"powerPlay": false
}
},
"powerPlayStrength": "Even",
"hasShootout": false,
"intermissionInfo": {
"intermissionTimeRemaining": 0,
"intermissionTimeElapsed": 0,
"inIntermission": false
},
"powerPlayInfo": {
"situationTimeRemaining": 0,
"situationTimeElapsed": 10,
"inSituation": false
}
},
"boxscore": {
"teams": {
"away": {
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"abbreviation": "SJS",
"triCode": "SJS"
},
"teamStats": {
"teamSkaterStats": {
"goals": 2,
"pim": 6,
"shots": 36,
"powerPlayPercentage": "33.3",
"powerPlayGoals": 1,
"powerPlayOpportunities": 3,
"faceOffWinPercentage": "46.8",
"blocked": 12,
"takeaways": 7,
"giveaways": 11,
"hits": 35
}
},
"players": {
"ID8466138": {
"person": {
"id": 8466138,
"fullName": "Joe Thornton",
"link": "/api/v1/people/8466138",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "19",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": {
"skaterStats": {
"timeOnIce": "15:44",
"assists": 1,
"goals": 0,
"shots": 0,
"hits": 0,
"powerPlayGoals": 0,
"powerPlayAssists": 1,
"penaltyMinutes": 0,
"faceOffPct": 37.5,
"faceOffWins": 3,
"faceoffTaken": 8,
"takeaways": 0,
"giveaways": 0,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 0,
"plusMinus": -3,
"evenTimeOnIce": "12:47",
"powerPlayTimeOnIce": "2:57",
"shortHandedTimeOnIce": "0:00"
}
}
},
"ID8470613": {
"person": {
"id": 8470613,
"fullName": "Brent Burns",
"link": "/api/v1/people/8470613",
"shootsCatches": "R",
"rosterStatus": "Y"
},
"jerseyNumber": "88",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": {
"skaterStats": {
"timeOnIce": "27:30",
"assists": 0,
"goals": 0,
"shots": 3,
"hits": 4,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 2,
"faceOffWins": 0,
"faceoffTaken": 0,
"takeaways": 2,
"giveaways": 2,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 2,
"plusMinus": -1,
"evenTimeOnIce": "23:25",
"powerPlayTimeOnIce": "2:52",
"shortHandedTimeOnIce": "1:13"
}
}
},
"ID8480160": {
"person": {
"id": 8480160,
"fullName": "Radim Simek",
"link": "/api/v1/people/8480160",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "51",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": {
"skaterStats": {
"timeOnIce": "19:30",
"assists": 0,
"goals": 0,
"shots": 2,
"hits": 0,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffWins": 0,
"faceoffTaken": 0,
"takeaways": 1,
"giveaways": 1,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 2,
"plusMinus": 1,
"evenTimeOnIce": "17:43",
"powerPlayTimeOnIce": "0:00",
"shortHandedTimeOnIce": "1:47"
}
}
},
"ID8471709": {
"person": {
"id": 8471709,
"fullName": "Marc-Edouard Vlasic",
"link": "/api/v1/people/8471709",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "44",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": {
"skaterStats": {
"timeOnIce": "21:27",
"assists": 0,
"goals": 0,
"shots": 3,
"hits": 0,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffWins": 0,
"faceoffTaken": 0,
"takeaways": 0,
"giveaways": 2,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 1,
"plusMinus": -1,
"evenTimeOnIce": "18:50",
"powerPlayTimeOnIce": "0:42",
"shortHandedTimeOnIce": "1:55"
}
}
},
"ID8480084": {
"person": {
"id": 8480084,
"fullName": "Nick DeSimone",
"link": "/api/v1/people/8480084",
"shootsCatches": "R",
"rosterStatus": "N"
},
"jerseyNumber": "57",
"position": {
"code": "N/A",
"name": "Unknown",
"type": "Unknown",
"abbreviation": "N/A"
},
"stats": {}
},
"ID8475834": {
"person": {
"id": 8475834,
"fullName": "Marcus Sorensen",
"link": "/api/v1/people/8475834",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "20",
"position": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
},
"stats": {
"skaterStats": {
"timeOnIce": "16:17",
"assists": 0,
"goals": 0,
"shots": 0,
"hits": 1,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffWins": 0,
"faceoffTaken": 0,
"takeaways": 0,
"giveaways": 0,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 0,
"plusMinus": -3,
"evenTimeOnIce": "14:25",
"powerPlayTimeOnIce": "0:36",
"shortHandedTimeOnIce": "1:16"
}
}
},
"ID8475869": {
"person": {
"id": 8475869,
"fullName": "Brandon Davidson",
"link": "/api/v1/people/8475869",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "21",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": {
"skaterStats": {
"timeOnIce": "17:37",
"assists": 0,
"goals": 0,
"shots": 2,
"hits": 5,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffWins": 0,
"faceoffTaken": 0,
"takeaways": 0,
"giveaways": 1,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 1,
"plusMinus": -2,
"evenTimeOnIce": "16:50",
"powerPlayTimeOnIce": "0:00",
"shortHandedTimeOnIce": "0:47"
}
}
},
"ID8475841": {
"person": {
"id": 8475841,
"fullName": "Tim Heed",
"link": "/api/v1/people/8475841",
"shootsCatches": "R",
"rosterStatus": "Y"
},
"jerseyNumber": "72",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": {
"skaterStats": {
"timeOnIce": "18:22",
"assists": 0,
"goals": 0,
"shots": 0,
"hits": 0,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffWins": 0,
"faceoffTaken": 0,
"takeaways": 0,
"giveaways": 0,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 0,
"plusMinus": -2,
"evenTimeOnIce": "16:46",
"powerPlayTimeOnIce": "1:02",
"shortHandedTimeOnIce": "0:34"
}
}
},
"ID8477922": {
"person": {
"id": 8477922,
"fullName": "Melker Karlsson",
"link": "/api/v1/people/8477922",
"shootsCatches": "R",
"rosterStatus": "Y"
},
"jerseyNumber": "68",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": {
"skaterStats": {
"timeOnIce": "15:41",
"assists": 0,
"goals": 0,
"shots": 2,
"hits": 0,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffWins": 0,
"faceoffTaken": 0,
"takeaways": 3,
"giveaways": 1,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 0,
"plusMinus": 0,
"evenTimeOnIce": "13:28",
"powerPlayTimeOnIce": "0:21",
"shortHandedTimeOnIce": "1:52"
}
}
},
"ID8480965": {
"person": {
"id": 8480965,
"fullName": "Antti Suomela",
"link": "/api/v1/people/8480965",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "40",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": {
"skaterStats": {
"timeOnIce": "10:18",
"assists": 0,
"goals": 0,
"shots": 0,
"hits": 1,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 2,
"faceOffPct": 50,
"faceOffWins": 2,
"faceoffTaken": 4,
"takeaways": 0,
"giveaways": 1,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 0,
"plusMinus": 0,
"evenTimeOnIce": "10:03",
"powerPlayTimeOnIce": "0:00",
"shortHandedTimeOnIce": "0:15"
}
}
},
"ID8481812": {
"person": {
"id": 8481812,
"fullName": "Nikolai Knyzhov",
"link": "/api/v1/people/8481812",
"shootsCatches": "L",
"rosterStatus": "N"
},
"jerseyNumber": "71",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": {
"skaterStats": {
"timeOnIce": "11:36",
"assists": 0,
"goals": 0,
"shots": 0,
"hits": 2,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffWins": 0,
"faceoffTaken": 0,
"takeaways": 0,
"giveaways": 0,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 1,
"plusMinus": -1,
"evenTimeOnIce": "11:36",
"powerPlayTimeOnIce": "0:00",
"shortHandedTimeOnIce": "0:00"
}
}
},
"ID8474053": {
"person": {
"id": 8474053,
"fullName": "Logan Couture",
"link": "/api/v1/people/8474053",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "39",
"position": {
"code": "N/A",
"name": "Unknown",
"type": "Unknown",
"abbreviation": "N/A"
},
"stats": {}
},
"ID8478136": {
"person": {
"id": 8478136,
"fullName": "Jacob Middleton",
"link": "/api/v1/people/8478136",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "67",
"position": {
"code": "N/A",
"name": "Unknown",
"type": "Unknown",
"abbreviation": "N/A"
},
"stats": {}
},
"ID8478414": {
"person": {
"id": 8478414,
"fullName": "Timo Meier",
"link": "/api/v1/people/8478414",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "28",
"position": {
"code": "R",
"name": "Right Wing",
"type": "Forward",
"abbreviation": "RW"
},
"stats": {
"skaterStats": {
"timeOnIce": "16:45",
"assists": 1,
"goals": 1,
"shots": 3,
"hits": 1,
"powerPlayGoals": 0,
"powerPlayAssists": 1,
"penaltyMinutes": 0,
"faceOffWins": 0,
"faceoffTaken": 0,
"takeaways": 0,
"giveaways": 0,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 0,
"plusMinus": -1,
"evenTimeOnIce": "13:48",
"powerPlayTimeOnIce": "2:57",
"shortHandedTimeOnIce": "0:00"
}
}
},
"ID8481516": {
"person": {
"id": 8481516,
"fullName": "Joel Kellman",
"link": "/api/v1/people/8481516",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "46",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": {
"skaterStats": {
"timeOnIce": "15:07",
"assists": 0,
"goals": 0,
"shots": 4,
"hits": 4,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffPct": 60,
"faceOffWins": 6,
"faceoffTaken": 10,
"takeaways": 1,
"giveaways": 1,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 0,
"plusMinus": 0,
"evenTimeOnIce": "13:51",
"powerPlayTimeOnIce": "0:21",
"shortHandedTimeOnIce": "0:55"
}
}
},
"ID8475169": {
"person": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "9",
"position": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
},
"stats": {
"skaterStats": {
"timeOnIce": "19:22",
"assists": 1,
"goals": 1,
"shots": 7,
"hits": 2,
"powerPlayGoals": 1,
"powerPlayAssists": 0,
"penaltyMinutes": 2,
"faceOffPct": 57.14,
"faceOffWins": 8,
"faceoffTaken": 14,
"takeaways": 0,
"giveaways": 0,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 0,
"plusMinus": 0,
"evenTimeOnIce": "15:50",
"powerPlayTimeOnIce": "3:18",
"shortHandedTimeOnIce": "0:14"
}
}
},
"ID8478099": {
"person": {
"id": 8478099,
"fullName": "Kevin Labanc",
"link": "/api/v1/people/8478099",
"shootsCatches": "R",
"rosterStatus": "Y"
},
"jerseyNumber": "62",
"position": {
"code": "R",
"name": "Right Wing",
"type": "Forward",
"abbreviation": "RW"
},
"stats": {
"skaterStats": {
"timeOnIce": "18:23",
"assists": 0,
"goals": 0,
"shots": 3,
"hits": 1,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffWins": 0,
"faceoffTaken": 0,
"takeaways": 0,
"giveaways": 0,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 1,
"plusMinus": -1,
"evenTimeOnIce": "15:26",
"powerPlayTimeOnIce": "2:57",
"shortHandedTimeOnIce": "0:00"
}
}
},
"ID8479983": {
"person": {
"id": 8479983,
"fullName": "Mario Ferraro",
"link": "/api/v1/people/8479983",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "38",
"position": {
"code": "N/A",
"name": "Unknown",
"type": "Unknown",
"abbreviation": "N/A"
},
"stats": {}
},
"ID8476474": {
"person": {
"id": 8476474,
"fullName": "Stefan Noesen",
"link": "/api/v1/people/8476474",
"shootsCatches": "R",
"rosterStatus": "Y"
},
"jerseyNumber": "11",
"position": {
"code": "R",
"name": "Right Wing",
"type": "Forward",
"abbreviation": "RW"
},
"stats": {
"skaterStats": {
"timeOnIce": "13:52",
"assists": 0,
"goals": 0,
"shots": 2,
"hits": 5,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffPct": 0,
"faceOffWins": 0,
"faceoffTaken": 1,
"takeaways": 0,
"giveaways": 0,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 2,
"plusMinus": -1,
"evenTimeOnIce": "12:34",
"powerPlayTimeOnIce": "1:18",
"shortHandedTimeOnIce": "0:00"
}
}
},
"ID8480384": {
"person": {
"id": 8480384,
"fullName": "Alexander True",
"link": "/api/v1/people/8480384",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "70",
"position": {
"code": "N/A",
"name": "Unknown",
"type": "Unknown",
"abbreviation": "N/A"
},
"stats": {}
},
"ID8479580": {
"person": {
"id": 8479580,
"fullName": "Dylan Gambrell",
"link": "/api/v1/people/8479580",
"shootsCatches": "R",
"rosterStatus": "Y"
},
"jerseyNumber": "7",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": {
"skaterStats": {
"timeOnIce": "13:00",
"assists": 0,
"goals": 0,
"shots": 0,
"hits": 1,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffPct": 37.5,
"faceOffWins": 3,
"faceoffTaken": 8,
"takeaways": 0,
"giveaways": 0,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 0,
"plusMinus": 0,
"evenTimeOnIce": "10:40",
"powerPlayTimeOnIce": "0:36",
"shortHandedTimeOnIce": "1:44"
}
}
},
"ID8481640": {
"person": {
"id": 8481640,
"fullName": "Lean Bergmann",
"link": "/api/v1/people/8481640",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "45",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": {
"skaterStats": {
"timeOnIce": "8:56",
"assists": 0,
"goals": 0,
"shots": 1,
"hits": 5,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffWins": 0,
"faceoffTaken": 0,
"takeaways": 0,
"giveaways": 0,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 1,
"plusMinus": 0,
"evenTimeOnIce": "8:35",
"powerPlayTimeOnIce": "0:21",
"shortHandedTimeOnIce": "0:00"
}
}
},
"ID8479393": {
"person": {
"id": 8479393,
"fullName": "Noah Gregor",
"link": "/api/v1/people/8479393",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "73",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": {
"skaterStats": {
"timeOnIce": "17:27",
"assists": 0,
"goals": 0,
"shots": 4,
"hits": 3,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffPct": 0,
"faceOffWins": 0,
"faceoffTaken": 2,
"takeaways": 0,
"giveaways": 0,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 1,
"plusMinus": 0,
"evenTimeOnIce": "16:30",
"powerPlayTimeOnIce": "0:57",
"shortHandedTimeOnIce": "0:00"
}
}
},
"ID8477180": {
"person": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "30",
"position": {
"code": "G",
"name": "Goalie",
"type": "Goalie",
"abbreviation": "G"
},
"stats": {
"goalieStats": {
"timeOnIce": "59:48",
"assists": 0,
"goals": 0,
"pim": 0,
"shots": 45,
"saves": 39,
"powerPlaySaves": 2,
"shortHandedSaves": 0,
"evenSaves": 37,
"shortHandedShotsAgainst": 0,
"evenShotsAgainst": 41,
"powerPlayShotsAgainst": 4,
"decision": "L",
"savePercentage": 86.66666666666667,
"powerPlaySavePercentage": 50,
"evenStrengthSavePercentage": 90.2439024390244
}
}
}
},
"goalies": [
8477180
],
"skaters": [
8479580,
8475169,
8476474,
8466138,
8475834,
8475869,
8478414,
8480965,
8471709,
8481640,
8481516,
8480160,
8478099,
8477922,
8481812,
8475841,
8479393,
8470613,
8479983,
8474053,
8480084,
8478136,
8480384
],
"onIce": [
8471709,
8475869,
8479580,
8480965,
8481640
],
"onIcePlus": [
{
"playerId": 8471709,
"shiftDuration": 39,
"stamina": 66
},
{
"playerId": 8475869,
"shiftDuration": 39,
"stamina": 66
},
{
"playerId": 8479580,
"shiftDuration": 39,
"stamina": 66
},
{
"playerId": 8480965,
"shiftDuration": 10,
"stamina": 100
},
{
"playerId": 8481640,
"shiftDuration": 10,
"stamina": 100
}
],
"scratches": [
8479983,
8474053,
8480084,
8478136,
8480384
],
"penaltyBox": [],
"coaches": [
{
"person": {
"fullName": "Bob Boughner",
"link": "/api/v1/people/null"
},
"position": {
"code": "HC",
"name": "Head Coach",
"type": "Head Coach",
"abbreviation": "Head Coach"
}
}
]
},
"home": {
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"abbreviation": "CHI",
"triCode": "CHI"
},
"teamStats": {
"teamSkaterStats": {
"goals": 6,
"pim": 6,
"shots": 45,
"powerPlayPercentage": "66.7",
"powerPlayGoals": 2,
"powerPlayOpportunities": 3,
"faceOffWinPercentage": "53.2",
"blocked": 25,
"takeaways": 9,
"giveaways": 14,
"hits": 18
}
},
"players": {
"ID8473604": {
"person": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "19",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": {
"skaterStats": {
"timeOnIce": "17:40",
"assists": 2,
"goals": 0,
"shots": 2,
"hits": 0,
"powerPlayGoals": 0,
"powerPlayAssists": 1,
"penaltyMinutes": 0,
"faceOffPct": 71.43,
"faceOffWins": 10,
"faceoffTaken": 14,
"takeaways": 0,
"giveaways": 1,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 1,
"plusMinus": 1,
"evenTimeOnIce": "14:02",
"powerPlayTimeOnIce": "2:20",
"shortHandedTimeOnIce": "1:18"
}
}
},
"ID8476886": {
"person": {
"id": 8476886,
"fullName": "Slater Koekkoek",
"link": "/api/v1/people/8476886",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "68",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": {
"skaterStats": {
"timeOnIce": "18:31",
"assists": 1,
"goals": 0,
"shots": 1,
"hits": 3,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffWins": 0,
"faceoffTaken": 0,
"takeaways": 0,
"giveaways": 0,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 4,
"plusMinus": 0,
"evenTimeOnIce": "17:14",
"powerPlayTimeOnIce": "0:00",
"shortHandedTimeOnIce": "1:17"
}
}
},
"ID8470645": {
"person": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "50",
"position": {
"code": "G",
"name": "Goalie",
"type": "Goalie",
"abbreviation": "G"
},
"stats": {
"goalieStats": {
"timeOnIce": "60:00",
"assists": 0,
"goals": 0,
"pim": 0,
"shots": 36,
"saves": 34,
"powerPlaySaves": 6,
"shortHandedSaves": 1,
"evenSaves": 27,
"shortHandedShotsAgainst": 1,
"evenShotsAgainst": 28,
"powerPlayShotsAgainst": 7,
"decision": "W",
"savePercentage": 94.44444444444444,
"powerPlaySavePercentage": 85.71428571428571,
"shortHandedSavePercentage": 100,
"evenStrengthSavePercentage": 96.42857142857143
}
}
},
"ID8477846": {
"person": {
"id": 8477846,
"fullName": "Ryan Carpenter",
"link": "/api/v1/people/8477846",
"shootsCatches": "R",
"rosterStatus": "Y"
},
"jerseyNumber": "22",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": {
"skaterStats": {
"timeOnIce": "13:07",
"assists": 0,
"goals": 0,
"shots": 2,
"hits": 1,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 2,
"faceOffPct": 33.33,
"faceOffWins": 1,
"faceoffTaken": 3,
"takeaways": 0,
"giveaways": 1,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 0,
"plusMinus": 0,
"evenTimeOnIce": "12:10",
"powerPlayTimeOnIce": "0:00",
"shortHandedTimeOnIce": "0:57"
}
}
},
"ID8476438": {
"person": {
"id": 8476438,
"fullName": "Brandon Saad",
"link": "/api/v1/people/8476438",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "20",
"position": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
},
"stats": {
"skaterStats": {
"timeOnIce": "14:39",
"assists": 0,
"goals": 1,
"shots": 2,
"hits": 0,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffWins": 0,
"faceoffTaken": 0,
"takeaways": 1,
"giveaways": 1,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 1,
"plusMinus": 1,
"evenTimeOnIce": "13:03",
"powerPlayTimeOnIce": "0:36",
"shortHandedTimeOnIce": "1:00"
}
}
},
"ID8479337": {
"person": {
"id": 8479337,
"fullName": "Alex DeBrincat",
"link": "/api/v1/people/8479337",
"shootsCatches": "R",
"rosterStatus": "Y"
},
"jerseyNumber": "12",
"position": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
},
"stats": {
"skaterStats": {
"timeOnIce": "16:06",
"assists": 3,
"goals": 0,
"shots": 3,
"hits": 0,
"powerPlayGoals": 0,
"powerPlayAssists": 2,
"penaltyMinutes": 2,
"faceOffWins": 0,
"faceoffTaken": 0,
"takeaways": 2,
"giveaways": 0,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 0,
"plusMinus": 1,
"evenTimeOnIce": "13:34",
"powerPlayTimeOnIce": "2:32",
"shortHandedTimeOnIce": "0:00"
}
}
},
"ID8470281": {
"person": {
"id": 8470281,
"fullName": "Duncan Keith",
"link": "/api/v1/people/8470281",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "2",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": {
"skaterStats": {
"timeOnIce": "22:01",
"assists": 1,
"goals": 1,
"shots": 3,
"hits": 0,
"powerPlayGoals": 1,
"powerPlayAssists": 1,
"penaltyMinutes": 0,
"faceOffWins": 0,
"faceoffTaken": 0,
"takeaways": 2,
"giveaways": 3,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 3,
"plusMinus": 1,
"evenTimeOnIce": "16:56",
"powerPlayTimeOnIce": "2:28",
"shortHandedTimeOnIce": "2:37"
}
}
},
"ID8474141": {
"person": {
"id": 8474141,
"fullName": "Patrick Kane",
"link": "/api/v1/people/8474141",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "88",
"position": {
"code": "R",
"name": "Right Wing",
"type": "Forward",
"abbreviation": "RW"
},
"stats": {
"skaterStats": {
"timeOnIce": "18:03",
"assists": 0,
"goals": 2,
"shots": 11,
"hits": 0,
"powerPlayGoals": 1,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffWins": 0,
"faceoffTaken": 0,
"takeaways": 0,
"giveaways": 0,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 1,
"plusMinus": 2,
"evenTimeOnIce": "15:24",
"powerPlayTimeOnIce": "2:39",
"shortHandedTimeOnIce": "0:00"
}
}
},
"ID8479423": {
"person": {
"id": 8479423,
"fullName": "Alex Nylander",
"link": "/api/v1/people/8479423",
"shootsCatches": "R",
"rosterStatus": "Y"
},
"jerseyNumber": "92",
"position": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
},
"stats": {
"skaterStats": {
"timeOnIce": "14:30",
"assists": 1,
"goals": 1,
"shots": 2,
"hits": 1,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffWins": 0,
"faceoffTaken": 0,
"takeaways": 1,
"giveaways": 1,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 1,
"plusMinus": 2,
"evenTimeOnIce": "13:55",
"powerPlayTimeOnIce": "0:35",
"shortHandedTimeOnIce": "0:00"
}
}
},
"ID8474250": {
"person": {
"id": 8474250,
"fullName": "Zack Smith",
"link": "/api/v1/people/8474250",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "15",
"position": {
"code": "N/A",
"name": "Unknown",
"type": "Unknown",
"abbreviation": "N/A"
},
"stats": {}
},
"ID8476874": {
"person": {
"id": 8476874,
"fullName": "Olli Maatta",
"link": "/api/v1/people/8476874",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "6",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": {
"skaterStats": {
"timeOnIce": "19:00",
"assists": 0,
"goals": 0,
"shots": 0,
"hits": 0,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffWins": 0,
"faceoffTaken": 0,
"takeaways": 0,
"giveaways": 1,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 2,
"plusMinus": 0,
"evenTimeOnIce": "17:43",
"powerPlayTimeOnIce": "0:00",
"shortHandedTimeOnIce": "1:17"
}
}
},
"ID8479523": {
"person": {
"id": 8479523,
"fullName": "Lucas Carlsson",
"link": "/api/v1/people/8479523",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "46",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": {
"skaterStats": {
"timeOnIce": "18:08",
"assists": 0,
"goals": 0,
"shots": 2,
"hits": 2,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffWins": 0,
"faceoffTaken": 0,
"takeaways": 0,
"giveaways": 0,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 2,
"plusMinus": 2,
"evenTimeOnIce": "17:07",
"powerPlayTimeOnIce": "0:40",
"shortHandedTimeOnIce": "0:21"
}
}
},
"ID8477330": {
"person": {
"id": 8477330,
"fullName": "Dominik Kubalik",
"link": "/api/v1/people/8477330",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "8",
"position": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
},
"stats": {
"skaterStats": {
"timeOnIce": "14:43",
"assists": 0,
"goals": 1,
"shots": 3,
"hits": 1,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffWins": 0,
"faceoffTaken": 0,
"takeaways": 1,
"giveaways": 0,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 0,
"plusMinus": 0,
"evenTimeOnIce": "14:14",
"powerPlayTimeOnIce": "0:29",
"shortHandedTimeOnIce": "0:00"
}
}
},
"ID8479542": {
"person": {
"id": 8479542,
"fullName": "Brandon Hagel",
"link": "/api/v1/people/8479542",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "38",
"position": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
},
"stats": {
"skaterStats": {
"timeOnIce": "11:48",
"assists": 0,
"goals": 0,
"shots": 4,
"hits": 1,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffWins": 0,
"faceoffTaken": 0,
"takeaways": 1,
"giveaways": 0,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 1,
"plusMinus": 0,
"evenTimeOnIce": "11:48",
"powerPlayTimeOnIce": "0:00",
"shortHandedTimeOnIce": "0:00"
}
}
},
"ID8480814": {
"person": {
"id": 8480814,
"fullName": "Nicolas Beaudin",
"link": "/api/v1/people/8480814",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "74",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": {
"skaterStats": {
"timeOnIce": "17:01",
"assists": 0,
"goals": 0,
"shots": 2,
"hits": 2,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffWins": 0,
"faceoffTaken": 0,
"takeaways": 0,
"giveaways": 1,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 2,
"plusMinus": 1,
"evenTimeOnIce": "17:01",
"powerPlayTimeOnIce": "0:00",
"shortHandedTimeOnIce": "0:00"
}
}
},
"ID8476372": {
"person": {
"id": 8476372,
"fullName": "Nick Seeler",
"link": "/api/v1/people/8476372",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "55",
"position": {
"code": "N/A",
"name": "Unknown",
"type": "Unknown",
"abbreviation": "N/A"
},
"stats": {}
},
"ID8479465": {
"person": {
"id": 8479465,
"fullName": "Drake Caggiula",
"link": "/api/v1/people/8479465",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "91",
"position": {
"code": "N/A",
"name": "Unknown",
"type": "Unknown",
"abbreviation": "N/A"
},
"stats": {}
},
"ID8478440": {
"person": {
"id": 8478440,
"fullName": "Dylan Strome",
"link": "/api/v1/people/8478440",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "17",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": {
"skaterStats": {
"timeOnIce": "15:19",
"assists": 1,
"goals": 0,
"shots": 3,
"hits": 1,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 2,
"faceOffPct": 55.56,
"faceOffWins": 5,
"faceoffTaken": 9,
"takeaways": 0,
"giveaways": 0,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 1,
"plusMinus": 2,
"evenTimeOnIce": "14:31",
"powerPlayTimeOnIce": "0:48",
"shortHandedTimeOnIce": "0:00"
}
}
},
"ID8476473": {
"person": {
"id": 8476473,
"fullName": "Connor Murphy",
"link": "/api/v1/people/8476473",
"shootsCatches": "R",
"rosterStatus": "Y"
},
"jerseyNumber": "5",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": {
"skaterStats": {
"timeOnIce": "22:24",
"assists": 0,
"goals": 0,
"shots": 1,
"hits": 1,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffWins": 0,
"faceoffTaken": 0,
"takeaways": 0,
"giveaways": 1,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 5,
"plusMinus": 2,
"evenTimeOnIce": "19:13",
"powerPlayTimeOnIce": "0:13",
"shortHandedTimeOnIce": "2:58"
}
}
},
"ID8478146": {
"person": {
"id": 8478146,
"fullName": "Matthew Highmore",
"link": "/api/v1/people/8478146",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "36",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": {
"skaterStats": {
"timeOnIce": "11:29",
"assists": 0,
"goals": 0,
"shots": 2,
"hits": 3,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffWins": 0,
"faceoffTaken": 0,
"takeaways": 0,
"giveaways": 0,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 1,
"plusMinus": 0,
"evenTimeOnIce": "10:56",
"powerPlayTimeOnIce": "0:00",
"shortHandedTimeOnIce": "0:33"
}
}
},
"ID8480144": {
"person": {
"id": 8480144,
"fullName": "David Kampf",
"link": "/api/v1/people/8480144",
"shootsCatches": "L",
"rosterStatus": "Y"
},
"jerseyNumber": "64",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": {
"skaterStats": {
"timeOnIce": "13:05",
"assists": 0,
"goals": 0,
"shots": 1,
"hits": 1,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffPct": 75,
"faceOffWins": 3,
"faceoffTaken": 4,
"takeaways": 0,
"giveaways": 0,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 0,
"plusMinus": 0,
"evenTimeOnIce": "11:04",
"powerPlayTimeOnIce": "0:00",
"shortHandedTimeOnIce": "2:01"
}
}
},
"ID8480871": {
"person": {
"id": 8480871,
"fullName": "Adam Boqvist",
"link": "/api/v1/people/8480871",
"shootsCatches": "R",
"rosterStatus": "Y"
},
"jerseyNumber": "27",
"position": {
"code": "N/A",
"name": "Unknown",
"type": "Unknown",
"abbreviation": "N/A"
},
"stats": {}
},
"ID8481523": {
"person": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523",
"shootsCatches": "R",
"rosterStatus": "Y"
},
"jerseyNumber": "77",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": {
"skaterStats": {
"timeOnIce": "16:32",
"assists": 1,
"goals": 0,
"shots": 1,
"hits": 1,
"powerPlayGoals": 0,
"powerPlayAssists": 0,
"penaltyMinutes": 0,
"faceOffPct": 35.29,
"faceOffWins": 6,
"faceoffTaken": 17,
"takeaways": 1,
"giveaways": 1,
"shortHandedGoals": 0,
"shortHandedAssists": 0,
"blocked": 0,
"plusMinus": 0,
"evenTimeOnIce": "13:10",
"powerPlayTimeOnIce": "2:20",
"shortHandedTimeOnIce": "1:02"
}
}
}
},
"goalies": [
8470645
],
"skaters": [
8470281,
8476473,
8476874,
8477330,
8479337,
8478440,
8473604,
8476438,
8477846,
8478146,
8479542,
8479523,
8480144,
8476886,
8480814,
8481523,
8474141,
8479423,
8474250,
8480871,
8476372,
8479465
],
"onIce": [
8470645,
8477846,
8478146,
8479523,
8480144,
8480814
],
"onIcePlus": [
{
"playerId": 8470645,
"shiftDuration": 389,
"stamina": 33
},
{
"playerId": 8477846,
"shiftDuration": 40,
"stamina": 66
},
{
"playerId": 8478146,
"shiftDuration": 33,
"stamina": 66
},
{
"playerId": 8479523,
"shiftDuration": 20,
"stamina": 100
},
{
"playerId": 8480144,
"shiftDuration": 40,
"stamina": 66
},
{
"playerId": 8480814,
"shiftDuration": 20,
"stamina": 100
}
],
"scratches": [
8474250,
8480871,
8476372,
8479465
],
"penaltyBox": [],
"coaches": [
{
"person": {
"fullName": "Jeremy Colliton",
"link": "/api/v1/people/null"
},
"position": {
"code": "HC",
"name": "Head Coach",
"type": "Head Coach",
"abbreviation": "Head Coach"
}
}
]
}
},
"officials": [
{
"official": {
"id": 2462,
"fullName": "Francois StLaurent",
"link": "/api/v1/people/2462"
},
"officialType": "Referee"
},
{
"official": {
"id": 6818,
"fullName": "Jake Brenk",
"link": "/api/v1/people/6818"
},
"officialType": "Referee"
},
{
"official": {
"id": 2301,
"fullName": "Darren Gibbs",
"link": "/api/v1/people/2301"
},
"officialType": "Linesman"
},
{
"official": {
"id": 7672,
"fullName": "Travis Toomey",
"link": "/api/v1/people/7672"
},
"officialType": "Linesman"
}
]
},
"decisions": {
"winner": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645"
},
"loser": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180"
},
"firstStar": {
"id": 8479337,
"fullName": "Alex DeBrincat",
"link": "/api/v1/people/8479337"
},
"secondStar": {
"id": 8474141,
"fullName": "Patrick Kane",
"link": "/api/v1/people/8474141"
},
"thirdStar": {
"id": 8470281,
"fullName": "Duncan Keith",
"link": "/api/v1/people/8470281"
}
}
}
}
''';

const String gamePreviewResp = '''
{
"copyright": "NHL and the NHL Shield are registered trademarks of the National Hockey League. NHL and NHL team marks are the property of the NHL and its teams. © NHL 2020. All Rights Reserved.",
"teams": [
{
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16",
"venue": {
"id": 5092,
"name": "United Center",
"link": "/api/v1/venues/5092",
"city": "Chicago",
"timeZone": {
"id": "America/Chicago",
"offset": -5,
"tz": "CDT"
}
},
"abbreviation": "CHI",
"teamName": "Blackhawks",
"locationName": "Chicago",
"firstYearOfPlay": "1926",
"division": {
"id": 16,
"name": "Central",
"nameShort": "CEN",
"link": "/api/v1/divisions/16",
"abbreviation": "C"
},
"conference": {
"id": 5,
"name": "Western",
"link": "/api/v1/conferences/5"
},
"franchise": {
"franchiseId": 11,
"teamName": "Blackhawks",
"link": "/api/v1/franchises/11"
},
"teamStats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"stat": {
"gamesPlayed": 70,
"wins": 32,
"losses": 30,
"ot": 8,
"pts": 72,
"ptPctg": "51.4",
"goalsPerGame": 2.971,
"goalsAgainstPerGame": 3.057,
"evGGARatio": 1,
"powerPlayPercentage": "15.2",
"powerPlayGoals": 33,
"powerPlayGoalsAgainst": 37,
"powerPlayOpportunities": 217,
"penaltyKillPercentage": "82.1",
"shotsPerGame": 31.8143,
"shotsAllowed": 35.1143,
"winScoreFirst": 0.625,
"winOppScoreFirst": 0.316,
"winLeadFirstPer": 0.731,
"winLeadSecondPer": 0.786,
"winOutshootOpp": 0.478,
"winOutshotByOpp": 0.467,
"faceOffsTaken": 3933,
"faceOffsWon": 1964,
"faceOffsLost": 1969,
"faceOffWinPercentage": "49.9",
"shootingPctg": 9.3,
"savePctg": 0.913
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
}
},
{
"stat": {
"wins": "23rd",
"losses": "24th",
"ot": "18th",
"pts": "23rd",
"ptPctg": "23rd",
"goalsPerGame": "18th",
"goalsAgainstPerGame": "17th",
"evGGARatio": "18th",
"powerPlayPercentage": "28th",
"powerPlayGoals": "23rd",
"powerPlayGoalsAgainst": "9th",
"powerPlayOpportunities": "8th",
"penaltyKillOpportunities": "14th",
"penaltyKillPercentage": "9th",
"shotsPerGame": "13th",
"shotsAllowed": "31st",
"winScoreFirst": "27th",
"winOppScoreFirst": "19th",
"winLeadFirstPer": "20th",
"winLeadSecondPer": "26th",
"winOutshootOpp": "15th",
"winOutshotByOpp": "15th",
"faceOffsTaken": "24th",
"faceOffsWon": "20th",
"faceOffsLost": "12th",
"faceOffWinPercentage": "17th",
"savePctRank": "6th",
"shootingPctRank": "19th"
},
"team": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
}
}
]
}
],
"roster": {
"roster": [
{
"person": {
"id": 8470607,
"fullName": "Brent Seabrook",
"link": "/api/v1/people/8470607",
"firstName": "Brent",
"lastName": "Seabrook",
"primaryNumber": "7",
"birthDate": "1985-04-20",
"currentAge": 35,
"birthCity": "Richmond",
"birthStateProvince": "BC",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 3",
"weight": 220,
"active": true,
"alternateCaptain": true,
"captain": false,
"rookie": false,
"shootsCatches": "R",
"rosterStatus": "I",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "580:46",
"assists": 1,
"goals": 3,
"pim": 8,
"shots": 40,
"games": 32,
"hits": 52,
"powerPlayGoals": 1,
"powerPlayPoints": 1,
"powerPlayTimeOnIce": "22:58",
"evenTimeOnIce": "508:56",
"penaltyMinutes": "8",
"faceOffPct": 0,
"shotPct": 7.5,
"gameWinningGoals": 1,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "48:52",
"blocked": 61,
"plusMinus": 1,
"points": 4,
"shifts": 765,
"timeOnIcePerGame": "18:08",
"evenTimeOnIcePerGame": "15:54",
"shortHandedTimeOnIcePerGame": "01:31",
"powerPlayTimeOnIcePerGame": "00:43"
}
}
]
}
]
},
"jerseyNumber": "7",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
{
"person": {
"id": 8475177,
"fullName": "Calvin de Haan",
"link": "/api/v1/people/8475177",
"firstName": "Calvin",
"lastName": "de Haan",
"primaryNumber": "44",
"birthDate": "1991-05-09",
"currentAge": 29,
"birthCity": "Carp",
"birthStateProvince": "ON",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 1",
"weight": 195,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "I",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "577:25",
"assists": 5,
"goals": 1,
"pim": 10,
"shots": 42,
"games": 29,
"hits": 93,
"powerPlayGoals": 0,
"powerPlayPoints": 0,
"powerPlayTimeOnIce": "03:03",
"evenTimeOnIce": "496:24",
"penaltyMinutes": "10",
"faceOffPct": 0,
"shotPct": 2.4,
"gameWinningGoals": 0,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "77:58",
"blocked": 73,
"plusMinus": 10,
"points": 6,
"shifts": 685,
"timeOnIcePerGame": "19:54",
"evenTimeOnIcePerGame": "17:07",
"shortHandedTimeOnIcePerGame": "02:41",
"powerPlayTimeOnIcePerGame": "00:06"
}
}
]
}
]
},
"jerseyNumber": "44",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
{
"person": {
"id": 8476381,
"fullName": "Andrew Shaw",
"link": "/api/v1/people/8476381",
"firstName": "Andrew",
"lastName": "Shaw",
"primaryNumber": "65",
"birthDate": "1991-07-20",
"currentAge": 28,
"birthCity": "Belleville",
"birthStateProvince": "ON",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "5' 11",
"weight": 182,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "R",
"rosterStatus": "I",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "R",
"name": "Right Wing",
"type": "Forward",
"abbreviation": "RW"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "375:54",
"assists": 7,
"goals": 3,
"pim": 33,
"shots": 46,
"games": 26,
"hits": 74,
"powerPlayGoals": 1,
"powerPlayPoints": 2,
"powerPlayTimeOnIce": "58:26",
"evenTimeOnIce": "313:35",
"penaltyMinutes": "33",
"faceOffPct": 45.16,
"shotPct": 6.5,
"gameWinningGoals": 0,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "03:53",
"blocked": 9,
"plusMinus": -4,
"points": 10,
"shifts": 470,
"timeOnIcePerGame": "14:27",
"evenTimeOnIcePerGame": "12:03",
"shortHandedTimeOnIcePerGame": "00:08",
"powerPlayTimeOnIcePerGame": "02:14"
}
}
]
}
]
},
"jerseyNumber": "65",
"position": {
"code": "R",
"name": "Right Wing",
"type": "Forward",
"abbreviation": "RW"
}
},
{
"person": {
"id": 8470281,
"fullName": "Duncan Keith",
"link": "/api/v1/people/8470281",
"firstName": "Duncan",
"lastName": "Keith",
"primaryNumber": "2",
"birthDate": "1983-07-16",
"currentAge": 36,
"birthCity": "Winnipeg",
"birthStateProvince": "MB",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 1",
"weight": 192,
"active": true,
"alternateCaptain": true,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "1487:31",
"assists": 24,
"goals": 3,
"pim": 18,
"shots": 111,
"games": 61,
"hits": 26,
"powerPlayGoals": 2,
"powerPlayPoints": 11,
"powerPlayTimeOnIce": "139:11",
"evenTimeOnIce": "1181:29",
"penaltyMinutes": "18",
"faceOffPct": 0,
"shotPct": 2.7,
"gameWinningGoals": 0,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "166:51",
"blocked": 117,
"plusMinus": 1,
"points": 27,
"shifts": 1584,
"timeOnIcePerGame": "24:23",
"evenTimeOnIcePerGame": "19:22",
"shortHandedTimeOnIcePerGame": "02:44",
"powerPlayTimeOnIcePerGame": "02:16"
}
}
]
}
]
},
"jerseyNumber": "2",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
{
"person": {
"id": 8470645,
"fullName": "Corey Crawford",
"link": "/api/v1/people/8470645",
"firstName": "Corey",
"lastName": "Crawford",
"primaryNumber": "50",
"birthDate": "1984-12-31",
"currentAge": 35,
"birthCity": "Montreal",
"birthStateProvince": "QC",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 2",
"weight": 216,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "G",
"name": "Goalie",
"type": "Goalie",
"abbreviation": "G"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "2340:03",
"ot": 3,
"shutouts": 1,
"ties": 0,
"wins": 16,
"losses": 20,
"saves": 1186,
"powerPlaySaves": 132,
"shortHandedSaves": 26,
"evenSaves": 1028,
"shortHandedShots": 29,
"evenShots": 1110,
"powerPlayShots": 155,
"savePercentage": 0.917,
"goalAgainstAverage": 2.7692,
"games": 40,
"gamesStarted": 39,
"shotsAgainst": 1294,
"goalsAgainst": 108,
"timeOnIcePerGame": "58:30",
"powerPlaySavePercentage": 85.16129032258064,
"shortHandedSavePercentage": 89.65517241379311,
"evenStrengthSavePercentage": 92.61261261261261
}
}
]
}
]
},
"jerseyNumber": "50",
"position": {
"code": "G",
"name": "Goalie",
"type": "Goalie",
"abbreviation": "G"
}
},
{
"person": {
"id": 8473604,
"fullName": "Jonathan Toews",
"link": "/api/v1/people/8473604",
"firstName": "Jonathan",
"lastName": "Toews",
"primaryNumber": "19",
"birthDate": "1988-04-29",
"currentAge": 32,
"birthCity": "Winnipeg",
"birthStateProvince": "MB",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 2",
"weight": 201,
"active": true,
"alternateCaptain": false,
"captain": true,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "1384:23",
"assists": 42,
"goals": 18,
"pim": 48,
"shots": 172,
"games": 70,
"hits": 56,
"powerPlayGoals": 1,
"powerPlayPoints": 8,
"powerPlayTimeOnIce": "231:50",
"evenTimeOnIce": "1017:58",
"penaltyMinutes": "48",
"faceOffPct": 57.29,
"shotPct": 10.5,
"gameWinningGoals": 3,
"overTimeGoals": 3,
"shortHandedGoals": 1,
"shortHandedPoints": 1,
"shortHandedTimeOnIce": "134:35",
"blocked": 35,
"plusMinus": -2,
"points": 60,
"shifts": 1683,
"timeOnIcePerGame": "19:46",
"evenTimeOnIcePerGame": "14:32",
"shortHandedTimeOnIcePerGame": "01:55",
"powerPlayTimeOnIcePerGame": "03:18"
}
}
]
}
]
},
"jerseyNumber": "19",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
{
"person": {
"id": 8474141,
"fullName": "Patrick Kane",
"link": "/api/v1/people/8474141",
"firstName": "Patrick",
"lastName": "Kane",
"primaryNumber": "88",
"birthDate": "1988-11-19",
"currentAge": 31,
"birthCity": "Buffalo",
"birthStateProvince": "NY",
"birthCountry": "USA",
"nationality": "USA",
"height": "5' 10",
"weight": 177,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "R",
"name": "Right Wing",
"type": "Forward",
"abbreviation": "RW"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "1493:51",
"assists": 51,
"goals": 33,
"pim": 40,
"shots": 275,
"games": 70,
"hits": 24,
"powerPlayGoals": 8,
"powerPlayPoints": 23,
"powerPlayTimeOnIce": "259:35",
"evenTimeOnIce": "1232:01",
"penaltyMinutes": "40",
"faceOffPct": 25,
"shotPct": 12,
"gameWinningGoals": 2,
"overTimeGoals": 1,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "02:15",
"blocked": 19,
"plusMinus": 8,
"points": 84,
"shifts": 1558,
"timeOnIcePerGame": "21:20",
"evenTimeOnIcePerGame": "17:36",
"shortHandedTimeOnIcePerGame": "00:01",
"powerPlayTimeOnIcePerGame": "03:42"
}
}
]
}
]
},
"jerseyNumber": "88",
"position": {
"code": "R",
"name": "Right Wing",
"type": "Forward",
"abbreviation": "RW"
}
},
{
"person": {
"id": 8474250,
"fullName": "Zack Smith",
"link": "/api/v1/people/8474250",
"firstName": "Zack",
"lastName": "Smith",
"primaryNumber": "15",
"birthDate": "1988-04-05",
"currentAge": 32,
"birthCity": "Maple Creek",
"birthStateProvince": "SK",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 2",
"weight": 208,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "589:20",
"assists": 7,
"goals": 4,
"pim": 29,
"shots": 43,
"games": 50,
"hits": 112,
"powerPlayGoals": 0,
"powerPlayPoints": 0,
"powerPlayTimeOnIce": "08:45",
"evenTimeOnIce": "518:57",
"penaltyMinutes": "29",
"faceOffPct": 46.31,
"shotPct": 9.3,
"gameWinningGoals": 1,
"overTimeGoals": 0,
"shortHandedGoals": 1,
"shortHandedPoints": 2,
"shortHandedTimeOnIce": "61:38",
"blocked": 18,
"plusMinus": 2,
"points": 11,
"shifts": 809,
"timeOnIcePerGame": "11:47",
"evenTimeOnIcePerGame": "10:22",
"shortHandedTimeOnIcePerGame": "01:13",
"powerPlayTimeOnIcePerGame": "00:10"
}
}
]
}
]
},
"jerseyNumber": "15",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
{
"person": {
"id": 8476372,
"fullName": "Nick Seeler",
"link": "/api/v1/people/8476372",
"firstName": "Nick",
"lastName": "Seeler",
"primaryNumber": "55",
"birthDate": "1993-06-03",
"currentAge": 27,
"birthCity": "Eden Prairie",
"birthStateProvince": "MN",
"birthCountry": "USA",
"nationality": "USA",
"height": "6' 2",
"weight": 201,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "143:08",
"assists": 1,
"goals": 0,
"pim": 15,
"shots": 5,
"games": 12,
"hits": 19,
"powerPlayGoals": 0,
"powerPlayPoints": 0,
"powerPlayTimeOnIce": "00:21",
"evenTimeOnIce": "134:59",
"penaltyMinutes": "15",
"faceOffPct": 0,
"shotPct": 0,
"gameWinningGoals": 0,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "07:48",
"blocked": 21,
"plusMinus": -8,
"points": 1,
"shifts": 187,
"timeOnIcePerGame": "11:55",
"evenTimeOnIcePerGame": "11:14",
"shortHandedTimeOnIcePerGame": "00:39",
"powerPlayTimeOnIcePerGame": "00:01"
}
}
]
}
]
},
"jerseyNumber": "55",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
{
"person": {
"id": 8476438,
"fullName": "Brandon Saad",
"link": "/api/v1/people/8476438",
"firstName": "Brandon",
"lastName": "Saad",
"primaryNumber": "20",
"birthDate": "1992-10-27",
"currentAge": 27,
"birthCity": "Pittsburgh",
"birthStateProvince": "PA",
"birthCountry": "USA",
"nationality": "USA",
"height": "6' 1",
"weight": 206,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "971:21",
"assists": 12,
"goals": 21,
"pim": 16,
"shots": 140,
"games": 58,
"hits": 36,
"powerPlayGoals": 1,
"powerPlayPoints": 1,
"powerPlayTimeOnIce": "71:35",
"evenTimeOnIce": "798:11",
"penaltyMinutes": "16",
"faceOffPct": 39.65,
"shotPct": 15,
"gameWinningGoals": 5,
"overTimeGoals": 0,
"shortHandedGoals": 2,
"shortHandedPoints": 2,
"shortHandedTimeOnIce": "101:35",
"blocked": 19,
"plusMinus": 2,
"points": 33,
"shifts": 1242,
"timeOnIcePerGame": "16:44",
"evenTimeOnIcePerGame": "13:45",
"shortHandedTimeOnIcePerGame": "01:45",
"powerPlayTimeOnIcePerGame": "01:14"
}
}
]
}
]
},
"jerseyNumber": "20",
"position": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
}
},
{
"person": {
"id": 8476473,
"fullName": "Connor Murphy",
"link": "/api/v1/people/8476473",
"firstName": "Connor",
"lastName": "Murphy",
"primaryNumber": "5",
"birthDate": "1993-03-26",
"currentAge": 27,
"birthCity": "Dublin",
"birthStateProvince": "OH",
"birthCountry": "USA",
"nationality": "USA",
"height": "6' 4",
"weight": 212,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "R",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "1232:32",
"assists": 14,
"goals": 5,
"pim": 27,
"shots": 117,
"games": 58,
"hits": 128,
"powerPlayGoals": 0,
"powerPlayPoints": 0,
"powerPlayTimeOnIce": "04:01",
"evenTimeOnIce": "1068:49",
"penaltyMinutes": "27",
"faceOffPct": 0,
"shotPct": 4.3,
"gameWinningGoals": 0,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 1,
"shortHandedTimeOnIce": "159:42",
"blocked": 138,
"plusMinus": 2,
"points": 19,
"shifts": 1450,
"timeOnIcePerGame": "21:15",
"evenTimeOnIcePerGame": "18:25",
"shortHandedTimeOnIcePerGame": "02:45",
"powerPlayTimeOnIcePerGame": "00:04"
}
}
]
}
]
},
"jerseyNumber": "5",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
{
"person": {
"id": 8476874,
"fullName": "Olli Maatta",
"link": "/api/v1/people/8476874",
"firstName": "Olli",
"lastName": "Maatta",
"primaryNumber": "6",
"birthDate": "1994-08-22",
"currentAge": 25,
"birthCity": "Jyväskylä",
"birthCountry": "FIN",
"nationality": "FIN",
"height": "6' 2",
"weight": 206,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "1197:18",
"assists": 13,
"goals": 4,
"pim": 20,
"shots": 80,
"games": 65,
"hits": 119,
"powerPlayGoals": 0,
"powerPlayPoints": 0,
"powerPlayTimeOnIce": "15:45",
"evenTimeOnIce": "1058:36",
"penaltyMinutes": "20",
"faceOffPct": 0,
"shotPct": 5,
"gameWinningGoals": 0,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 2,
"shortHandedTimeOnIce": "122:57",
"blocked": 110,
"plusMinus": 0,
"points": 17,
"shifts": 1494,
"timeOnIcePerGame": "18:25",
"evenTimeOnIcePerGame": "16:17",
"shortHandedTimeOnIcePerGame": "01:53",
"powerPlayTimeOnIcePerGame": "00:14"
}
}
]
}
]
},
"jerseyNumber": "6",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
{
"person": {
"id": 8476876,
"fullName": "Malcolm Subban",
"link": "/api/v1/people/8476876",
"firstName": "Malcolm",
"lastName": "Subban",
"primaryNumber": "30",
"birthDate": "1993-12-21",
"currentAge": 26,
"birthCity": "Toronto",
"birthStateProvince": "ON",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 2",
"weight": 215,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "G",
"name": "Goalie",
"type": "Goalie",
"abbreviation": "G"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "1134:15",
"ot": 3,
"shutouts": 0,
"ties": 0,
"wins": 9,
"losses": 7,
"saves": 486,
"powerPlaySaves": 71,
"shortHandedSaves": 14,
"evenSaves": 401,
"shortHandedShots": 15,
"evenShots": 447,
"powerPlayShots": 84,
"savePercentage": 0.89,
"goalAgainstAverage": 3.1739,
"games": 21,
"gamesStarted": 19,
"shotsAgainst": 546,
"goalsAgainst": 60,
"timeOnIcePerGame": "54:00",
"powerPlaySavePercentage": 84.52380952380952,
"shortHandedSavePercentage": 93.33333333333333,
"evenStrengthSavePercentage": 89.70917225950782
}
}
]
}
]
},
"jerseyNumber": "30",
"position": {
"code": "G",
"name": "Goalie",
"type": "Goalie",
"abbreviation": "G"
}
},
{
"person": {
"id": 8476886,
"fullName": "Slater Koekkoek",
"link": "/api/v1/people/8476886",
"firstName": "Slater",
"lastName": "Koekkoek",
"primaryNumber": "68",
"birthDate": "1994-02-18",
"currentAge": 26,
"birthCity": "Winchester",
"birthStateProvince": "ON",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 2",
"weight": 193,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "703:50",
"assists": 9,
"goals": 1,
"pim": 42,
"shots": 47,
"games": 42,
"hits": 64,
"powerPlayGoals": 0,
"powerPlayPoints": 0,
"powerPlayTimeOnIce": "01:15",
"evenTimeOnIce": "646:51",
"penaltyMinutes": "42",
"faceOffPct": 0,
"shotPct": 2.1,
"gameWinningGoals": 1,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "55:44",
"blocked": 58,
"plusMinus": 3,
"points": 10,
"shifts": 908,
"timeOnIcePerGame": "16:45",
"evenTimeOnIcePerGame": "15:24",
"shortHandedTimeOnIcePerGame": "01:19",
"powerPlayTimeOnIcePerGame": "00:01"
}
}
]
}
]
},
"jerseyNumber": "68",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
{
"person": {
"id": 8477330,
"fullName": "Dominik Kubalik",
"link": "/api/v1/people/8477330",
"firstName": "Dominik",
"lastName": "Kubalik",
"primaryNumber": "8",
"birthDate": "1995-08-21",
"currentAge": 24,
"birthCity": "Plzen",
"birthCountry": "CZE",
"nationality": "CZE",
"height": "6' 2",
"weight": 179,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "977:28",
"assists": 16,
"goals": 30,
"pim": 16,
"shots": 157,
"games": 68,
"hits": 79,
"powerPlayGoals": 4,
"powerPlayPoints": 8,
"powerPlayTimeOnIce": "132:33",
"evenTimeOnIce": "843:14",
"penaltyMinutes": "16",
"faceOffPct": 31.57,
"shotPct": 19.1,
"gameWinningGoals": 3,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "01:41",
"blocked": 17,
"plusMinus": 2,
"points": 46,
"shifts": 1224,
"timeOnIcePerGame": "14:22",
"evenTimeOnIcePerGame": "12:24",
"shortHandedTimeOnIcePerGame": "00:01",
"powerPlayTimeOnIcePerGame": "01:56"
}
}
]
}
]
},
"jerseyNumber": "8",
"position": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
}
},
{
"person": {
"id": 8477846,
"fullName": "Ryan Carpenter",
"link": "/api/v1/people/8477846",
"firstName": "Ryan",
"lastName": "Carpenter",
"primaryNumber": "22",
"birthDate": "1991-01-18",
"currentAge": 29,
"birthCity": "Oviedo",
"birthStateProvince": "FL",
"birthCountry": "USA",
"nationality": "USA",
"height": "6' 0",
"weight": 200,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "R",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "971:04",
"assists": 12,
"goals": 3,
"pim": 28,
"shots": 80,
"games": 69,
"hits": 117,
"powerPlayGoals": 0,
"powerPlayPoints": 0,
"powerPlayTimeOnIce": "16:24",
"evenTimeOnIce": "788:34",
"penaltyMinutes": "28",
"faceOffPct": 43.11,
"shotPct": 3.8,
"gameWinningGoals": 0,
"overTimeGoals": 0,
"shortHandedGoals": 1,
"shortHandedPoints": 3,
"shortHandedTimeOnIce": "166:06",
"blocked": 48,
"plusMinus": -6,
"points": 15,
"shifts": 1339,
"timeOnIcePerGame": "14:04",
"evenTimeOnIcePerGame": "11:25",
"shortHandedTimeOnIcePerGame": "02:24",
"powerPlayTimeOnIcePerGame": "00:14"
}
}
]
}
]
},
"jerseyNumber": "22",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
{
"person": {
"id": 8478146,
"fullName": "Matthew Highmore",
"link": "/api/v1/people/8478146",
"firstName": "Matthew",
"lastName": "Highmore",
"primaryNumber": "36",
"birthDate": "1996-02-27",
"currentAge": 24,
"birthCity": "Halifax",
"birthStateProvince": "NS",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "5' 11",
"weight": 188,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "353:16",
"assists": 4,
"goals": 2,
"pim": 6,
"shots": 35,
"games": 36,
"hits": 38,
"powerPlayGoals": 0,
"powerPlayPoints": 0,
"powerPlayTimeOnIce": "02:26",
"evenTimeOnIce": "338:16",
"penaltyMinutes": "6",
"faceOffPct": 25,
"shotPct": 5.7,
"gameWinningGoals": 0,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "12:34",
"blocked": 9,
"plusMinus": -1,
"points": 6,
"shifts": 496,
"timeOnIcePerGame": "09:48",
"evenTimeOnIcePerGame": "09:23",
"shortHandedTimeOnIcePerGame": "00:20",
"powerPlayTimeOnIcePerGame": "00:04"
}
}
]
}
]
},
"jerseyNumber": "36",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
{
"person": {
"id": 8478440,
"fullName": "Dylan Strome",
"link": "/api/v1/people/8478440",
"firstName": "Dylan",
"lastName": "Strome",
"primaryNumber": "17",
"birthDate": "1997-03-07",
"currentAge": 23,
"birthCity": "Mississauga",
"birthStateProvince": "ON",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 3",
"weight": 200,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "924:31",
"assists": 26,
"goals": 12,
"pim": 16,
"shots": 97,
"games": 58,
"hits": 23,
"powerPlayGoals": 2,
"powerPlayPoints": 8,
"powerPlayTimeOnIce": "151:02",
"evenTimeOnIce": "772:01",
"penaltyMinutes": "16",
"faceOffPct": 47.67,
"shotPct": 12.4,
"gameWinningGoals": 2,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "01:28",
"blocked": 29,
"plusMinus": 1,
"points": 38,
"shifts": 1085,
"timeOnIcePerGame": "15:56",
"evenTimeOnIcePerGame": "13:18",
"shortHandedTimeOnIcePerGame": "00:01",
"powerPlayTimeOnIcePerGame": "02:36"
}
}
]
}
]
},
"jerseyNumber": "17",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
{
"person": {
"id": 8479337,
"fullName": "Alex DeBrincat",
"link": "/api/v1/people/8479337",
"firstName": "Alex",
"lastName": "DeBrincat",
"primaryNumber": "12",
"birthDate": "1997-12-18",
"currentAge": 22,
"birthCity": "Farmington Hills",
"birthStateProvince": "MI",
"birthCountry": "USA",
"nationality": "USA",
"height": "5' 7",
"weight": 165,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "R",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "1224:34",
"assists": 27,
"goals": 18,
"pim": 15,
"shots": 207,
"games": 70,
"hits": 58,
"powerPlayGoals": 10,
"powerPlayPoints": 16,
"powerPlayTimeOnIce": "243:19",
"evenTimeOnIce": "980:21",
"penaltyMinutes": "15",
"faceOffPct": 35,
"shotPct": 8.7,
"gameWinningGoals": 4,
"overTimeGoals": 1,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "00:54",
"blocked": 19,
"plusMinus": -10,
"points": 45,
"shifts": 1366,
"timeOnIcePerGame": "17:29",
"evenTimeOnIcePerGame": "14:00",
"shortHandedTimeOnIcePerGame": "00:00",
"powerPlayTimeOnIcePerGame": "03:28"
}
}
]
}
]
},
"jerseyNumber": "12",
"position": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
}
},
{
"person": {
"id": 8479423,
"fullName": "Alex Nylander",
"link": "/api/v1/people/8479423",
"firstName": "Alex",
"lastName": "Nylander",
"primaryNumber": "92",
"birthDate": "1998-03-02",
"currentAge": 22,
"birthCity": "Calgary",
"birthStateProvince": "AB",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 1",
"weight": 192,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "R",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "788:47",
"assists": 16,
"goals": 10,
"pim": 10,
"shots": 94,
"games": 65,
"hits": 29,
"powerPlayGoals": 0,
"powerPlayPoints": 2,
"powerPlayTimeOnIce": "75:44",
"evenTimeOnIce": "713:03",
"penaltyMinutes": "10",
"faceOffPct": 26.31,
"shotPct": 10.6,
"gameWinningGoals": 1,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "00:00",
"blocked": 14,
"plusMinus": -2,
"points": 26,
"shifts": 974,
"timeOnIcePerGame": "12:08",
"evenTimeOnIcePerGame": "10:58",
"shortHandedTimeOnIcePerGame": "00:00",
"powerPlayTimeOnIcePerGame": "01:09"
}
}
]
}
]
},
"jerseyNumber": "92",
"position": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
}
},
{
"person": {
"id": 8479465,
"fullName": "Drake Caggiula",
"link": "/api/v1/people/8479465",
"firstName": "Drake",
"lastName": "Caggiula",
"primaryNumber": "91",
"birthDate": "1994-06-20",
"currentAge": 26,
"birthCity": "Pickering",
"birthStateProvince": "ON",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "5' 10",
"weight": 176,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "472:37",
"assists": 6,
"goals": 9,
"pim": 32,
"shots": 56,
"games": 40,
"hits": 81,
"powerPlayGoals": 1,
"powerPlayPoints": 1,
"powerPlayTimeOnIce": "06:28",
"evenTimeOnIce": "442:04",
"penaltyMinutes": "32",
"faceOffPct": 28.57,
"shotPct": 16.1,
"gameWinningGoals": 0,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 1,
"shortHandedTimeOnIce": "24:05",
"blocked": 16,
"plusMinus": -3,
"points": 15,
"shifts": 641,
"timeOnIcePerGame": "11:48",
"evenTimeOnIcePerGame": "11:03",
"shortHandedTimeOnIcePerGame": "00:36",
"powerPlayTimeOnIcePerGame": "00:09"
}
}
]
}
]
},
"jerseyNumber": "91",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
{
"person": {
"id": 8479523,
"fullName": "Lucas Carlsson",
"link": "/api/v1/people/8479523",
"firstName": "Lucas",
"lastName": "Carlsson",
"primaryNumber": "46",
"birthDate": "1997-07-05",
"currentAge": 22,
"birthCity": "Gävle",
"birthCountry": "SWE",
"nationality": "SWE",
"height": "6' 0",
"weight": 189,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "84:50",
"assists": 1,
"goals": 0,
"pim": 0,
"shots": 3,
"games": 6,
"hits": 11,
"powerPlayGoals": 0,
"powerPlayPoints": 0,
"powerPlayTimeOnIce": "01:35",
"evenTimeOnIce": "81:31",
"penaltyMinutes": "0",
"faceOffPct": 0,
"shotPct": 0,
"gameWinningGoals": 0,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "01:44",
"blocked": 6,
"plusMinus": 3,
"points": 1,
"shifts": 108,
"timeOnIcePerGame": "14:08",
"evenTimeOnIcePerGame": "13:35",
"shortHandedTimeOnIcePerGame": "00:17",
"powerPlayTimeOnIcePerGame": "00:15"
}
}
]
}
]
},
"jerseyNumber": "46",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
{
"person": {
"id": 8479542,
"fullName": "Brandon Hagel",
"link": "/api/v1/people/8479542",
"firstName": "Brandon",
"lastName": "Hagel",
"primaryNumber": "38",
"birthDate": "1998-08-27",
"currentAge": 21,
"birthCity": "Saskatoon",
"birthStateProvince": "SK",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "5' 11",
"weight": 174,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "11:48",
"assists": 0,
"goals": 0,
"pim": 0,
"shots": 4,
"games": 1,
"hits": 1,
"powerPlayGoals": 0,
"powerPlayPoints": 0,
"powerPlayTimeOnIce": "00:00",
"evenTimeOnIce": "11:48",
"penaltyMinutes": "0",
"faceOffPct": 0,
"shotPct": 0,
"gameWinningGoals": 0,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "00:00",
"blocked": 1,
"plusMinus": 0,
"points": 0,
"shifts": 15,
"timeOnIcePerGame": "11:48",
"evenTimeOnIcePerGame": "11:48",
"shortHandedTimeOnIcePerGame": "00:00",
"powerPlayTimeOnIcePerGame": "00:00"
}
}
]
}
]
},
"jerseyNumber": "38",
"position": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
}
},
{
"person": {
"id": 8480144,
"fullName": "David Kampf",
"link": "/api/v1/people/8480144",
"firstName": "David",
"lastName": "Kampf",
"primaryNumber": "64",
"birthDate": "1995-01-12",
"currentAge": 25,
"birthCity": "Chomutov",
"birthCountry": "CZE",
"nationality": "CZE",
"height": "6' 2",
"weight": 188,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "956:41",
"assists": 8,
"goals": 8,
"pim": 8,
"shots": 90,
"games": 70,
"hits": 52,
"powerPlayGoals": 0,
"powerPlayPoints": 0,
"powerPlayTimeOnIce": "02:53",
"evenTimeOnIce": "802:09",
"penaltyMinutes": "8",
"faceOffPct": 52.34,
"shotPct": 8.9,
"gameWinningGoals": 2,
"overTimeGoals": 0,
"shortHandedGoals": 1,
"shortHandedPoints": 1,
"shortHandedTimeOnIce": "151:39",
"blocked": 26,
"plusMinus": -11,
"points": 16,
"shifts": 1311,
"timeOnIcePerGame": "13:40",
"evenTimeOnIcePerGame": "11:27",
"shortHandedTimeOnIcePerGame": "02:09",
"powerPlayTimeOnIcePerGame": "00:02"
}
}
]
}
]
},
"jerseyNumber": "64",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
{
"person": {
"id": 8480814,
"fullName": "Nicolas Beaudin",
"link": "/api/v1/people/8480814",
"firstName": "Nicolas",
"lastName": "Beaudin",
"primaryNumber": "74",
"birthDate": "1999-10-07",
"currentAge": 20,
"birthCity": "Chateauguay",
"birthStateProvince": "QC",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "5' 11",
"weight": 168,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "17:01",
"assists": 0,
"goals": 0,
"pim": 0,
"shots": 2,
"games": 1,
"hits": 2,
"powerPlayGoals": 0,
"powerPlayPoints": 0,
"powerPlayTimeOnIce": "00:00",
"evenTimeOnIce": "17:01",
"penaltyMinutes": "0",
"faceOffPct": 0,
"shotPct": 0,
"gameWinningGoals": 0,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "00:00",
"blocked": 2,
"plusMinus": 1,
"points": 0,
"shifts": 24,
"timeOnIcePerGame": "17:01",
"evenTimeOnIcePerGame": "17:01",
"shortHandedTimeOnIcePerGame": "00:00",
"powerPlayTimeOnIcePerGame": "00:00"
}
}
]
}
]
},
"jerseyNumber": "74",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
{
"person": {
"id": 8480871,
"fullName": "Adam Boqvist",
"link": "/api/v1/people/8480871",
"firstName": "Adam",
"lastName": "Boqvist",
"primaryNumber": "27",
"birthDate": "2000-08-15",
"currentAge": 19,
"birthCity": "Falun",
"birthCountry": "SWE",
"nationality": "SWE",
"height": "5' 11",
"weight": 179,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "R",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "665:07",
"assists": 9,
"goals": 4,
"pim": 6,
"shots": 50,
"games": 41,
"hits": 33,
"powerPlayGoals": 0,
"powerPlayPoints": 2,
"powerPlayTimeOnIce": "88:59",
"evenTimeOnIce": "575:27",
"penaltyMinutes": "6",
"faceOffPct": 0,
"shotPct": 8,
"gameWinningGoals": 1,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "00:41",
"blocked": 43,
"plusMinus": -3,
"points": 13,
"shifts": 805,
"timeOnIcePerGame": "16:13",
"evenTimeOnIcePerGame": "14:02",
"shortHandedTimeOnIcePerGame": "00:01",
"powerPlayTimeOnIcePerGame": "02:10"
}
}
]
}
]
},
"jerseyNumber": "27",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
{
"person": {
"id": 8481523,
"fullName": "Kirby Dach",
"link": "/api/v1/people/8481523",
"firstName": "Kirby",
"lastName": "Dach",
"primaryNumber": "77",
"birthDate": "2001-01-21",
"currentAge": 19,
"birthCity": "Fort Saskatchewan",
"birthStateProvince": "AB",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 4",
"weight": 197,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "R",
"rosterStatus": "Y",
"currentTeam": {
"id": 16,
"name": "Chicago Blackhawks",
"link": "/api/v1/teams/16"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "913:00",
"assists": 15,
"goals": 8,
"pim": 24,
"shots": 101,
"games": 64,
"hits": 33,
"powerPlayGoals": 0,
"powerPlayPoints": 3,
"powerPlayTimeOnIce": "100:25",
"evenTimeOnIce": "810:19",
"penaltyMinutes": "24",
"faceOffPct": 33.78,
"shotPct": 7.9,
"gameWinningGoals": 2,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "02:16",
"blocked": 23,
"plusMinus": -1,
"points": 23,
"shifts": 1103,
"timeOnIcePerGame": "14:15",
"evenTimeOnIcePerGame": "12:39",
"shortHandedTimeOnIcePerGame": "00:02",
"powerPlayTimeOnIcePerGame": "01:34"
}
}
]
}
]
},
"jerseyNumber": "77",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
}
],
"link": "/api/v1/teams/16/roster"
},
"shortName": "Chicago",
"officialSiteUrl": "http://www.chicagoblackhawks.com/",
"franchiseId": 11,
"active": true
},
{
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28",
"venue": {
"name": "SAP Center at San Jose",
"link": "/api/v1/venues/null",
"city": "San Jose",
"timeZone": {
"id": "America/Los_Angeles",
"offset": -7,
"tz": "PDT"
}
},
"abbreviation": "SJS",
"teamName": "Sharks",
"locationName": "San Jose",
"firstYearOfPlay": "1990",
"division": {
"id": 15,
"name": "Pacific",
"nameShort": "PAC",
"link": "/api/v1/divisions/15",
"abbreviation": "P"
},
"conference": {
"id": 5,
"name": "Western",
"link": "/api/v1/conferences/5"
},
"franchise": {
"franchiseId": 29,
"teamName": "Sharks",
"link": "/api/v1/franchises/29"
},
"teamStats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"stat": {
"gamesPlayed": 70,
"wins": 29,
"losses": 36,
"ot": 5,
"pts": 63,
"ptPctg": "45.0",
"goalsPerGame": 2.571,
"goalsAgainstPerGame": 3.214,
"evGGARatio": 0.7593,
"powerPlayPercentage": "17.5",
"powerPlayGoals": 33,
"powerPlayGoalsAgainst": 32,
"powerPlayOpportunities": 189,
"penaltyKillPercentage": "85.7",
"shotsPerGame": 30.0143,
"shotsAllowed": 30.5714,
"winScoreFirst": 0.625,
"winOppScoreFirst": 0.237,
"winLeadFirstPer": 0.737,
"winLeadSecondPer": 0.87,
"winOutshootOpp": 0.417,
"winOutshotByOpp": 0.419,
"faceOffsTaken": 3817,
"faceOffsWon": 1868,
"faceOffsLost": 1949,
"faceOffWinPercentage": "48.9",
"shootingPctg": 8.6,
"savePctg": 0.895
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
}
},
{
"stat": {
"wins": "28th",
"losses": "30th",
"ot": "30th",
"pts": "29th",
"ptPctg": "29th",
"goalsPerGame": "28th",
"goalsAgainstPerGame": "27th",
"evGGARatio": "30th",
"powerPlayPercentage": "23rd",
"powerPlayGoals": "26th",
"powerPlayGoalsAgainst": "3rd",
"powerPlayOpportunities": "28th",
"penaltyKillOpportunities": "25th",
"penaltyKillPercentage": "1st",
"shotsPerGame": "26th",
"shotsAllowed": "10th",
"winScoreFirst": "28th",
"winOppScoreFirst": "25th",
"winLeadFirstPer": "18th",
"winLeadSecondPer": "13th",
"winOutshootOpp": "25th",
"winOutshotByOpp": "25th",
"faceOffsTaken": "29th",
"faceOffsWon": "28th",
"faceOffsLost": "9th",
"faceOffWinPercentage": "24th",
"savePctRank": "30th",
"shootingPctRank": "27th"
},
"team": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
}
}
]
}
],
"roster": {
"roster": [
{
"person": {
"id": 8474578,
"fullName": "Erik Karlsson",
"link": "/api/v1/people/8474578",
"firstName": "Erik",
"lastName": "Karlsson",
"primaryNumber": "65",
"birthDate": "1990-05-31",
"currentAge": 30,
"birthCity": "Landsbro",
"birthCountry": "SWE",
"nationality": "SWE",
"height": "6' 0",
"weight": 190,
"active": true,
"alternateCaptain": true,
"captain": false,
"rookie": false,
"shootsCatches": "R",
"rosterStatus": "I",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "1373:17",
"assists": 34,
"goals": 6,
"pim": 16,
"shots": 120,
"games": 56,
"hits": 26,
"powerPlayGoals": 1,
"powerPlayPoints": 13,
"powerPlayTimeOnIce": "168:13",
"evenTimeOnIce": "1060:50",
"penaltyMinutes": "16",
"faceOffPct": 0,
"shotPct": 5,
"gameWinningGoals": 0,
"overTimeGoals": 0,
"shortHandedGoals": 1,
"shortHandedPoints": 1,
"shortHandedTimeOnIce": "144:14",
"blocked": 74,
"plusMinus": -15,
"points": 40,
"shifts": 1531,
"timeOnIcePerGame": "24:31",
"evenTimeOnIcePerGame": "18:56",
"shortHandedTimeOnIcePerGame": "02:34",
"powerPlayTimeOnIcePerGame": "03:00"
}
}
]
}
]
},
"jerseyNumber": "65",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
{
"person": {
"id": 8474774,
"fullName": "Dalton Prout",
"link": "/api/v1/people/8474774",
"firstName": "Dalton",
"lastName": "Prout",
"primaryNumber": "5",
"birthDate": "1990-03-13",
"currentAge": 30,
"birthCity": "Kingsville",
"birthStateProvince": "ON",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 3",
"weight": 215,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "R",
"rosterStatus": "I",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "25:37",
"assists": 0,
"goals": 0,
"pim": 7,
"shots": 2,
"games": 2,
"hits": 3,
"powerPlayGoals": 0,
"powerPlayPoints": 0,
"powerPlayTimeOnIce": "00:00",
"evenTimeOnIce": "24:46",
"penaltyMinutes": "7",
"faceOffPct": 0,
"shotPct": 0,
"gameWinningGoals": 0,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "00:51",
"blocked": 3,
"plusMinus": 0,
"points": 0,
"shifts": 35,
"timeOnIcePerGame": "12:48",
"evenTimeOnIcePerGame": "12:23",
"shortHandedTimeOnIcePerGame": "00:25",
"powerPlayTimeOnIcePerGame": "00:00"
}
}
]
}
]
},
"jerseyNumber": "5",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
{
"person": {
"id": 8476881,
"fullName": "Tomas Hertl",
"link": "/api/v1/people/8476881",
"firstName": "Tomas",
"lastName": "Hertl",
"primaryNumber": "48",
"birthDate": "1993-11-12",
"currentAge": 26,
"birthCity": "Praha",
"birthCountry": "CZE",
"nationality": "CZE",
"height": "6' 2",
"weight": 215,
"active": true,
"alternateCaptain": true,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "I",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "885:22",
"assists": 20,
"goals": 16,
"pim": 16,
"shots": 117,
"games": 48,
"hits": 29,
"powerPlayGoals": 2,
"powerPlayPoints": 7,
"powerPlayTimeOnIce": "124:01",
"evenTimeOnIce": "691:47",
"penaltyMinutes": "16",
"faceOffPct": 54.81,
"shotPct": 13.7,
"gameWinningGoals": 1,
"overTimeGoals": 0,
"shortHandedGoals": 2,
"shortHandedPoints": 2,
"shortHandedTimeOnIce": "69:34",
"blocked": 25,
"plusMinus": -18,
"points": 36,
"shifts": 1123,
"timeOnIcePerGame": "18:26",
"evenTimeOnIcePerGame": "14:24",
"shortHandedTimeOnIcePerGame": "01:26",
"powerPlayTimeOnIcePerGame": "02:35"
}
}
]
}
]
},
"jerseyNumber": "48",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
{
"person": {
"id": 8466138,
"fullName": "Joe Thornton",
"link": "/api/v1/people/8466138",
"firstName": "Joe",
"lastName": "Thornton",
"primaryNumber": "19",
"birthDate": "1979-07-02",
"currentAge": 40,
"birthCity": "London",
"birthStateProvince": "ON",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 4",
"weight": 220,
"active": true,
"alternateCaptain": true,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "1085:02",
"assists": 24,
"goals": 7,
"pim": 34,
"shots": 76,
"games": 70,
"hits": 20,
"powerPlayGoals": 3,
"powerPlayPoints": 8,
"powerPlayTimeOnIce": "145:23",
"evenTimeOnIce": "939:20",
"penaltyMinutes": "34",
"faceOffPct": 49.38,
"shotPct": 9.2,
"gameWinningGoals": 1,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "00:19",
"blocked": 29,
"plusMinus": -19,
"points": 31,
"shifts": 1401,
"timeOnIcePerGame": "15:30",
"evenTimeOnIcePerGame": "13:25",
"shortHandedTimeOnIcePerGame": "00:00",
"powerPlayTimeOnIcePerGame": "02:04"
}
}
]
}
]
},
"jerseyNumber": "19",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
{
"person": {
"id": 8470613,
"fullName": "Brent Burns",
"link": "/api/v1/people/8470613",
"firstName": "Brent",
"lastName": "Burns",
"primaryNumber": "88",
"birthDate": "1985-03-09",
"currentAge": 35,
"birthCity": "Barrie",
"birthStateProvince": "ON",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 5",
"weight": 230,
"active": true,
"alternateCaptain": true,
"captain": false,
"rookie": false,
"shootsCatches": "R",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "1778:46",
"assists": 33,
"goals": 12,
"pim": 34,
"shots": 225,
"games": 70,
"hits": 72,
"powerPlayGoals": 5,
"powerPlayPoints": 17,
"powerPlayTimeOnIce": "193:42",
"evenTimeOnIce": "1411:56",
"penaltyMinutes": "34",
"faceOffPct": 0,
"shotPct": 5.3,
"gameWinningGoals": 1,
"overTimeGoals": 1,
"shortHandedGoals": 0,
"shortHandedPoints": 1,
"shortHandedTimeOnIce": "173:08",
"blocked": 115,
"plusMinus": -22,
"points": 45,
"shifts": 1995,
"timeOnIcePerGame": "25:24",
"evenTimeOnIcePerGame": "20:10",
"shortHandedTimeOnIcePerGame": "02:28",
"powerPlayTimeOnIcePerGame": "02:46"
}
}
]
}
]
},
"jerseyNumber": "88",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
{
"person": {
"id": 8471709,
"fullName": "Marc-Edouard Vlasic",
"link": "/api/v1/people/8471709",
"firstName": "Marc-Edouard",
"lastName": "Vlasic",
"primaryNumber": "44",
"birthDate": "1987-03-30",
"currentAge": 33,
"birthCity": "Montreal",
"birthStateProvince": "QC",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 1",
"weight": 205,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "1420:38",
"assists": 10,
"goals": 5,
"pim": 10,
"shots": 74,
"games": 70,
"hits": 37,
"powerPlayGoals": 0,
"powerPlayPoints": 0,
"powerPlayTimeOnIce": "18:40",
"evenTimeOnIce": "1206:04",
"penaltyMinutes": "10",
"faceOffPct": 0,
"shotPct": 6.8,
"gameWinningGoals": 1,
"overTimeGoals": 0,
"shortHandedGoals": 1,
"shortHandedPoints": 1,
"shortHandedTimeOnIce": "195:54",
"blocked": 97,
"plusMinus": -10,
"points": 15,
"shifts": 1803,
"timeOnIcePerGame": "20:17",
"evenTimeOnIcePerGame": "17:13",
"shortHandedTimeOnIcePerGame": "02:47",
"powerPlayTimeOnIcePerGame": "00:16"
}
}
]
}
]
},
"jerseyNumber": "44",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
{
"person": {
"id": 8474053,
"fullName": "Logan Couture",
"link": "/api/v1/people/8474053",
"firstName": "Logan",
"lastName": "Couture",
"primaryNumber": "39",
"birthDate": "1989-03-28",
"currentAge": 31,
"birthCity": "Guelph",
"birthStateProvince": "ON",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 1",
"weight": 200,
"active": true,
"alternateCaptain": false,
"captain": true,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "963:26",
"assists": 23,
"goals": 16,
"pim": 18,
"shots": 126,
"games": 52,
"hits": 54,
"powerPlayGoals": 0,
"powerPlayPoints": 9,
"powerPlayTimeOnIce": "143:05",
"evenTimeOnIce": "732:25",
"penaltyMinutes": "18",
"faceOffPct": 44.01,
"shotPct": 12.7,
"gameWinningGoals": 3,
"overTimeGoals": 3,
"shortHandedGoals": 0,
"shortHandedPoints": 2,
"shortHandedTimeOnIce": "87:56",
"blocked": 45,
"plusMinus": 0,
"points": 39,
"shifts": 1219,
"timeOnIcePerGame": "18:31",
"evenTimeOnIcePerGame": "14:05",
"shortHandedTimeOnIcePerGame": "01:41",
"powerPlayTimeOnIcePerGame": "02:45"
}
}
]
}
]
},
"jerseyNumber": "39",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
{
"person": {
"id": 8474889,
"fullName": "Martin Jones",
"link": "/api/v1/people/8474889",
"firstName": "Martin",
"lastName": "Jones",
"primaryNumber": "31",
"birthDate": "1990-01-10",
"currentAge": 30,
"birthCity": "North Vancouver",
"birthStateProvince": "BC",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 4",
"weight": 190,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "G",
"name": "Goalie",
"type": "Goalie",
"abbreviation": "G"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "2359:50",
"ot": 2,
"shutouts": 2,
"ties": 0,
"wins": 17,
"losses": 21,
"saves": 1021,
"powerPlaySaves": 191,
"shortHandedSaves": 31,
"evenSaves": 799,
"shortHandedShots": 34,
"evenShots": 897,
"powerPlayShots": 208,
"savePercentage": 0.896,
"goalAgainstAverage": 3.0002,
"games": 41,
"gamesStarted": 40,
"shotsAgainst": 1139,
"goalsAgainst": 118,
"timeOnIcePerGame": "57:33",
"powerPlaySavePercentage": 91.82692307692307,
"shortHandedSavePercentage": 91.17647058823529,
"evenStrengthSavePercentage": 89.07469342251952
}
}
]
}
]
},
"jerseyNumber": "31",
"position": {
"code": "G",
"name": "Goalie",
"type": "Goalie",
"abbreviation": "G"
}
},
{
"person": {
"id": 8475169,
"fullName": "Evander Kane",
"link": "/api/v1/people/8475169",
"firstName": "Evander",
"lastName": "Kane",
"primaryNumber": "9",
"birthDate": "1991-08-02",
"currentAge": 28,
"birthCity": "Vancouver",
"birthStateProvince": "BC",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 2",
"weight": 210,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "1250:28",
"assists": 21,
"goals": 26,
"pim": 122,
"shots": 216,
"games": 64,
"hits": 135,
"powerPlayGoals": 14,
"powerPlayPoints": 18,
"powerPlayTimeOnIce": "174:04",
"evenTimeOnIce": "989:27",
"penaltyMinutes": "122",
"faceOffPct": 52.73,
"shotPct": 12,
"gameWinningGoals": 6,
"overTimeGoals": 0,
"shortHandedGoals": 2,
"shortHandedPoints": 2,
"shortHandedTimeOnIce": "86:57",
"blocked": 25,
"plusMinus": -12,
"points": 47,
"shifts": 1520,
"timeOnIcePerGame": "19:32",
"evenTimeOnIcePerGame": "15:27",
"shortHandedTimeOnIcePerGame": "01:21",
"powerPlayTimeOnIcePerGame": "02:43"
}
}
]
}
]
},
"jerseyNumber": "9",
"position": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
}
},
{
"person": {
"id": 8475834,
"fullName": "Marcus Sorensen",
"link": "/api/v1/people/8475834",
"firstName": "Marcus",
"lastName": "Sorensen",
"primaryNumber": "20",
"birthDate": "1992-04-07",
"currentAge": 28,
"birthCity": "Sodertalje",
"birthCountry": "SWE",
"nationality": "SWE",
"height": "5' 11",
"weight": 175,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "913:44",
"assists": 11,
"goals": 7,
"pim": 26,
"shots": 78,
"games": 66,
"hits": 56,
"powerPlayGoals": 0,
"powerPlayPoints": 0,
"powerPlayTimeOnIce": "14:15",
"evenTimeOnIce": "801:40",
"penaltyMinutes": "26",
"faceOffPct": 15,
"shotPct": 9,
"gameWinningGoals": 0,
"overTimeGoals": 0,
"shortHandedGoals": 1,
"shortHandedPoints": 1,
"shortHandedTimeOnIce": "97:49",
"blocked": 18,
"plusMinus": -12,
"points": 18,
"shifts": 1288,
"timeOnIcePerGame": "13:50",
"evenTimeOnIcePerGame": "12:08",
"shortHandedTimeOnIcePerGame": "01:28",
"powerPlayTimeOnIcePerGame": "00:12"
}
}
]
}
]
},
"jerseyNumber": "20",
"position": {
"code": "L",
"name": "Left Wing",
"type": "Forward",
"abbreviation": "LW"
}
},
{
"person": {
"id": 8475841,
"fullName": "Tim Heed",
"link": "/api/v1/people/8475841",
"firstName": "Tim",
"lastName": "Heed",
"primaryNumber": "72",
"birthDate": "1991-01-27",
"currentAge": 29,
"birthCity": "Gothenburg",
"birthCountry": "SWE",
"nationality": "SWE",
"height": "5' 11",
"weight": 180,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "R",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "494:06",
"assists": 4,
"goals": 1,
"pim": 2,
"shots": 44,
"games": 38,
"hits": 16,
"powerPlayGoals": 0,
"powerPlayPoints": 1,
"powerPlayTimeOnIce": "30:56",
"evenTimeOnIce": "457:20",
"penaltyMinutes": "2",
"faceOffPct": 0,
"shotPct": 2.3,
"gameWinningGoals": 0,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "05:50",
"blocked": 30,
"plusMinus": -10,
"points": 5,
"shifts": 645,
"timeOnIcePerGame": "13:00",
"evenTimeOnIcePerGame": "12:02",
"shortHandedTimeOnIcePerGame": "00:09",
"powerPlayTimeOnIcePerGame": "00:48"
}
}
]
}
]
},
"jerseyNumber": "72",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
{
"person": {
"id": 8475869,
"fullName": "Brandon Davidson",
"link": "/api/v1/people/8475869",
"firstName": "Brandon",
"lastName": "Davidson",
"primaryNumber": "21",
"birthDate": "1991-08-21",
"currentAge": 28,
"birthCity": "Taber",
"birthStateProvince": "AB",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 2",
"weight": 208,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "149:42",
"assists": 0,
"goals": 0,
"pim": 0,
"shots": 17,
"games": 12,
"hits": 24,
"powerPlayGoals": 0,
"powerPlayPoints": 0,
"powerPlayTimeOnIce": "00:10",
"evenTimeOnIce": "146:46",
"penaltyMinutes": "0",
"faceOffPct": 0,
"shotPct": 0,
"gameWinningGoals": 0,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "02:46",
"blocked": 20,
"plusMinus": -3,
"points": 0,
"shifts": 208,
"timeOnIcePerGame": "12:28",
"evenTimeOnIcePerGame": "12:13",
"shortHandedTimeOnIcePerGame": "00:13",
"powerPlayTimeOnIcePerGame": "00:00"
}
}
]
}
]
},
"jerseyNumber": "21",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
{
"person": {
"id": 8476474,
"fullName": "Stefan Noesen",
"link": "/api/v1/people/8476474",
"firstName": "Stefan",
"lastName": "Noesen",
"primaryNumber": "11",
"birthDate": "1993-02-12",
"currentAge": 27,
"birthCity": "Plano",
"birthStateProvince": "TX",
"birthCountry": "USA",
"nationality": "USA",
"height": "6' 1",
"weight": 205,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "R",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "R",
"name": "Right Wing",
"type": "Forward",
"abbreviation": "RW"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "461:16",
"assists": 2,
"goals": 7,
"pim": 32,
"shots": 67,
"games": 40,
"hits": 74,
"powerPlayGoals": 1,
"powerPlayPoints": 1,
"powerPlayTimeOnIce": "27:42",
"evenTimeOnIce": "433:12",
"penaltyMinutes": "32",
"faceOffPct": 38.88,
"shotPct": 10.4,
"gameWinningGoals": 2,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "00:22",
"blocked": 17,
"plusMinus": -1,
"points": 9,
"shifts": 646,
"timeOnIcePerGame": "11:31",
"evenTimeOnIcePerGame": "10:49",
"shortHandedTimeOnIcePerGame": "00:00",
"powerPlayTimeOnIcePerGame": "00:41"
}
}
]
}
]
},
"jerseyNumber": "11",
"position": {
"code": "R",
"name": "Right Wing",
"type": "Forward",
"abbreviation": "RW"
}
},
{
"person": {
"id": 8477180,
"fullName": "Aaron Dell",
"link": "/api/v1/people/8477180",
"firstName": "Aaron",
"lastName": "Dell",
"primaryNumber": "30",
"birthDate": "1989-05-04",
"currentAge": 31,
"birthCity": "Airdrie",
"birthStateProvince": "AB",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 0",
"weight": 205,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "G",
"name": "Goalie",
"type": "Goalie",
"abbreviation": "G"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "1834:14",
"ot": 3,
"shutouts": 0,
"ties": 0,
"wins": 12,
"losses": 15,
"saves": 894,
"powerPlaySaves": 118,
"shortHandedSaves": 24,
"evenSaves": 752,
"shortHandedShots": 26,
"evenShots": 827,
"powerPlayShots": 133,
"savePercentage": 0.907,
"goalAgainstAverage": 3.0094,
"games": 33,
"gamesStarted": 30,
"shotsAgainst": 986,
"goalsAgainst": 92,
"timeOnIcePerGame": "55:34",
"powerPlaySavePercentage": 88.7218045112782,
"shortHandedSavePercentage": 92.3076923076923,
"evenStrengthSavePercentage": 90.9310761789601
}
}
]
}
]
},
"jerseyNumber": "30",
"position": {
"code": "G",
"name": "Goalie",
"type": "Goalie",
"abbreviation": "G"
}
},
{
"person": {
"id": 8477922,
"fullName": "Melker Karlsson",
"link": "/api/v1/people/8477922",
"firstName": "Melker",
"lastName": "Karlsson",
"primaryNumber": "68",
"birthDate": "1990-07-18",
"currentAge": 29,
"birthCity": "Lycksele",
"birthCountry": "SWE",
"nationality": "SWE",
"height": "6' 0",
"weight": 180,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "R",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "748:25",
"assists": 6,
"goals": 6,
"pim": 20,
"shots": 56,
"games": 61,
"hits": 38,
"powerPlayGoals": 0,
"powerPlayPoints": 0,
"powerPlayTimeOnIce": "02:27",
"evenTimeOnIce": "616:09",
"penaltyMinutes": "20",
"faceOffPct": 45.16,
"shotPct": 10.7,
"gameWinningGoals": 0,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "129:49",
"blocked": 39,
"plusMinus": -7,
"points": 12,
"shifts": 1115,
"timeOnIcePerGame": "12:16",
"evenTimeOnIcePerGame": "10:06",
"shortHandedTimeOnIcePerGame": "02:07",
"powerPlayTimeOnIcePerGame": "00:02"
}
}
]
}
]
},
"jerseyNumber": "68",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
{
"person": {
"id": 8478099,
"fullName": "Kevin Labanc",
"link": "/api/v1/people/8478099",
"firstName": "Kevin",
"lastName": "Labanc",
"primaryNumber": "62",
"birthDate": "1995-12-12",
"currentAge": 24,
"birthCity": "Brooklyn",
"birthStateProvince": "NY",
"birthCountry": "USA",
"nationality": "USA",
"height": "5' 11",
"weight": 185,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "R",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "R",
"name": "Right Wing",
"type": "Forward",
"abbreviation": "RW"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "1124:54",
"assists": 19,
"goals": 14,
"pim": 38,
"shots": 176,
"games": 70,
"hits": 46,
"powerPlayGoals": 3,
"powerPlayPoints": 9,
"powerPlayTimeOnIce": "169:00",
"evenTimeOnIce": "953:20",
"penaltyMinutes": "38",
"faceOffPct": 16.66,
"shotPct": 8,
"gameWinningGoals": 3,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "02:34",
"blocked": 24,
"plusMinus": -33,
"points": 33,
"shifts": 1395,
"timeOnIcePerGame": "16:04",
"evenTimeOnIcePerGame": "13:37",
"shortHandedTimeOnIcePerGame": "00:02",
"powerPlayTimeOnIcePerGame": "02:24"
}
}
]
}
]
},
"jerseyNumber": "62",
"position": {
"code": "R",
"name": "Right Wing",
"type": "Forward",
"abbreviation": "RW"
}
},
{
"person": {
"id": 8478136,
"fullName": "Jacob Middleton",
"link": "/api/v1/people/8478136",
"firstName": "Jacob",
"lastName": "Middleton",
"primaryNumber": "67",
"birthDate": "1996-01-02",
"currentAge": 24,
"birthCity": "Wainwright",
"birthStateProvince": "AB",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 3",
"weight": 210,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "107:40",
"assists": 2,
"goals": 0,
"pim": 9,
"shots": 9,
"games": 10,
"hits": 18,
"powerPlayGoals": 0,
"powerPlayPoints": 0,
"powerPlayTimeOnIce": "00:00",
"evenTimeOnIce": "100:05",
"penaltyMinutes": "9",
"faceOffPct": 0,
"shotPct": 0,
"gameWinningGoals": 0,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "07:35",
"blocked": 5,
"plusMinus": -2,
"points": 2,
"shifts": 154,
"timeOnIcePerGame": "10:46",
"evenTimeOnIcePerGame": "10:00",
"shortHandedTimeOnIcePerGame": "00:45",
"powerPlayTimeOnIcePerGame": "00:00"
}
}
]
}
]
},
"jerseyNumber": "67",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
{
"person": {
"id": 8478414,
"fullName": "Timo Meier",
"link": "/api/v1/people/8478414",
"firstName": "Timo",
"lastName": "Meier",
"primaryNumber": "28",
"birthDate": "1996-10-08",
"currentAge": 23,
"birthCity": "Herisau",
"birthCountry": "CHE",
"nationality": "CHE",
"height": "6' 0",
"weight": 210,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "R",
"name": "Right Wing",
"type": "Forward",
"abbreviation": "RW"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "1209:48",
"assists": 27,
"goals": 22,
"pim": 42,
"shots": 199,
"games": 70,
"hits": 155,
"powerPlayGoals": 2,
"powerPlayPoints": 9,
"powerPlayTimeOnIce": "147:33",
"evenTimeOnIce": "1013:38",
"penaltyMinutes": "42",
"faceOffPct": 32.43,
"shotPct": 11.1,
"gameWinningGoals": 2,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "48:37",
"blocked": 38,
"plusMinus": -22,
"points": 49,
"shifts": 1531,
"timeOnIcePerGame": "17:16",
"evenTimeOnIcePerGame": "14:28",
"shortHandedTimeOnIcePerGame": "00:41",
"powerPlayTimeOnIcePerGame": "02:06"
}
}
]
}
]
},
"jerseyNumber": "28",
"position": {
"code": "R",
"name": "Right Wing",
"type": "Forward",
"abbreviation": "RW"
}
},
{
"person": {
"id": 8479393,
"fullName": "Noah Gregor",
"link": "/api/v1/people/8479393",
"firstName": "Noah",
"lastName": "Gregor",
"primaryNumber": "73",
"birthDate": "1998-07-28",
"currentAge": 21,
"birthCity": "Beaumont",
"birthStateProvince": "AB",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "6' 0",
"weight": 185,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "281:39",
"assists": 2,
"goals": 3,
"pim": 8,
"shots": 33,
"games": 28,
"hits": 50,
"powerPlayGoals": 1,
"powerPlayPoints": 2,
"powerPlayTimeOnIce": "09:48",
"evenTimeOnIce": "271:51",
"penaltyMinutes": "8",
"faceOffPct": 31.57,
"shotPct": 9.1,
"gameWinningGoals": 0,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "00:00",
"blocked": 6,
"plusMinus": -5,
"points": 5,
"shifts": 416,
"timeOnIcePerGame": "10:03",
"evenTimeOnIcePerGame": "09:42",
"shortHandedTimeOnIcePerGame": "00:00",
"powerPlayTimeOnIcePerGame": "00:21"
}
}
]
}
]
},
"jerseyNumber": "73",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
{
"person": {
"id": 8479580,
"fullName": "Dylan Gambrell",
"link": "/api/v1/people/8479580",
"firstName": "Dylan",
"lastName": "Gambrell",
"primaryNumber": "7",
"birthDate": "1996-08-26",
"currentAge": 23,
"birthCity": "Bonney Lake",
"birthStateProvince": "WA",
"birthCountry": "USA",
"nationality": "USA",
"height": "6' 0",
"weight": 185,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "R",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "597:33",
"assists": 6,
"goals": 5,
"pim": 17,
"shots": 43,
"games": 50,
"hits": 40,
"powerPlayGoals": 0,
"powerPlayPoints": 1,
"powerPlayTimeOnIce": "33:28",
"evenTimeOnIce": "516:28",
"penaltyMinutes": "17",
"faceOffPct": 45.94,
"shotPct": 11.6,
"gameWinningGoals": 1,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "47:37",
"blocked": 29,
"plusMinus": -8,
"points": 11,
"shifts": 830,
"timeOnIcePerGame": "11:57",
"evenTimeOnIcePerGame": "10:19",
"shortHandedTimeOnIcePerGame": "00:57",
"powerPlayTimeOnIcePerGame": "00:40"
}
}
]
}
]
},
"jerseyNumber": "7",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
{
"person": {
"id": 8479983,
"fullName": "Mario Ferraro",
"link": "/api/v1/people/8479983",
"firstName": "Mario",
"lastName": "Ferraro",
"primaryNumber": "38",
"birthDate": "1998-09-17",
"currentAge": 21,
"birthCity": "Toronto",
"birthStateProvince": "ON",
"birthCountry": "CAN",
"nationality": "CAN",
"height": "5' 11",
"weight": 185,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "969:08",
"assists": 9,
"goals": 2,
"pim": 30,
"shots": 63,
"games": 61,
"hits": 120,
"powerPlayGoals": 0,
"powerPlayPoints": 0,
"powerPlayTimeOnIce": "18:49",
"evenTimeOnIce": "904:09",
"penaltyMinutes": "30",
"faceOffPct": 0,
"shotPct": 3.2,
"gameWinningGoals": 0,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 1,
"shortHandedTimeOnIce": "46:10",
"blocked": 58,
"plusMinus": -15,
"points": 11,
"shifts": 1253,
"timeOnIcePerGame": "15:53",
"evenTimeOnIcePerGame": "14:49",
"shortHandedTimeOnIcePerGame": "00:45",
"powerPlayTimeOnIcePerGame": "00:18"
}
}
]
}
]
},
"jerseyNumber": "38",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
{
"person": {
"id": 8480160,
"fullName": "Radim Simek",
"link": "/api/v1/people/8480160",
"firstName": "Radim",
"lastName": "Simek",
"primaryNumber": "51",
"birthDate": "1992-09-20",
"currentAge": 27,
"birthCity": "Mlada Boleslav",
"birthCountry": "CZE",
"nationality": "CZE",
"height": "5' 11",
"weight": 200,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "824:38",
"assists": 7,
"goals": 2,
"pim": 14,
"shots": 40,
"games": 48,
"hits": 91,
"powerPlayGoals": 0,
"powerPlayPoints": 0,
"powerPlayTimeOnIce": "01:54",
"evenTimeOnIce": "741:41",
"penaltyMinutes": "14",
"faceOffPct": 0,
"shotPct": 5,
"gameWinningGoals": 0,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "81:03",
"blocked": 60,
"plusMinus": -13,
"points": 9,
"shifts": 1098,
"timeOnIcePerGame": "17:10",
"evenTimeOnIcePerGame": "15:27",
"shortHandedTimeOnIcePerGame": "01:41",
"powerPlayTimeOnIcePerGame": "00:02"
}
}
]
}
]
},
"jerseyNumber": "51",
"position": {
"code": "D",
"name": "Defenseman",
"type": "Defenseman",
"abbreviation": "D"
}
},
{
"person": {
"id": 8480384,
"fullName": "Alexander True",
"link": "/api/v1/people/8480384",
"firstName": "Alexander",
"lastName": "True",
"primaryNumber": "70",
"birthDate": "1997-07-17",
"currentAge": 22,
"birthCity": "Copenhagen",
"birthCountry": "DNK",
"nationality": "DNK",
"height": "6' 5",
"weight": 200,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "120:03",
"assists": 4,
"goals": 0,
"pim": 2,
"shots": 12,
"games": 12,
"hits": 23,
"powerPlayGoals": 0,
"powerPlayPoints": 0,
"powerPlayTimeOnIce": "03:05",
"evenTimeOnIce": "115:51",
"penaltyMinutes": "2",
"faceOffPct": 46.37,
"shotPct": 0,
"gameWinningGoals": 0,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "01:07",
"blocked": 2,
"plusMinus": 1,
"points": 4,
"shifts": 187,
"timeOnIcePerGame": "10:00",
"evenTimeOnIcePerGame": "09:39",
"shortHandedTimeOnIcePerGame": "00:05",
"powerPlayTimeOnIcePerGame": "00:15"
}
}
]
}
]
},
"jerseyNumber": "70",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
{
"person": {
"id": 8480965,
"fullName": "Antti Suomela",
"link": "/api/v1/people/8480965",
"firstName": "Antti",
"lastName": "Suomela",
"primaryNumber": "40",
"birthDate": "1994-03-17",
"currentAge": 26,
"birthCity": "Espoo",
"birthCountry": "FIN",
"nationality": "FIN",
"height": "6' 0",
"weight": 180,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": false,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "193:46",
"assists": 6,
"goals": 1,
"pim": 4,
"shots": 18,
"games": 20,
"hits": 27,
"powerPlayGoals": 0,
"powerPlayPoints": 0,
"powerPlayTimeOnIce": "00:57",
"evenTimeOnIce": "187:23",
"penaltyMinutes": "4",
"faceOffPct": 54.83,
"shotPct": 5.6,
"gameWinningGoals": 0,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "05:26",
"blocked": 5,
"plusMinus": 4,
"points": 7,
"shifts": 284,
"timeOnIcePerGame": "09:41",
"evenTimeOnIcePerGame": "09:22",
"shortHandedTimeOnIcePerGame": "00:16",
"powerPlayTimeOnIcePerGame": "00:02"
}
}
]
}
]
},
"jerseyNumber": "40",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
{
"person": {
"id": 8481516,
"fullName": "Joel Kellman",
"link": "/api/v1/people/8481516",
"firstName": "Joel",
"lastName": "Kellman",
"primaryNumber": "46",
"birthDate": "1994-05-25",
"currentAge": 26,
"birthCity": "Karlskrona",
"birthCountry": "SWE",
"nationality": "SWE",
"height": "5' 11",
"weight": 192,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "358:57",
"assists": 4,
"goals": 3,
"pim": 4,
"shots": 31,
"games": 31,
"hits": 28,
"powerPlayGoals": 0,
"powerPlayPoints": 0,
"powerPlayTimeOnIce": "01:02",
"evenTimeOnIce": "330:42",
"penaltyMinutes": "4",
"faceOffPct": 47.05,
"shotPct": 9.7,
"gameWinningGoals": 1,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 1,
"shortHandedTimeOnIce": "27:13",
"blocked": 18,
"plusMinus": -1,
"points": 7,
"shifts": 525,
"timeOnIcePerGame": "11:34",
"evenTimeOnIcePerGame": "10:40",
"shortHandedTimeOnIcePerGame": "00:52",
"powerPlayTimeOnIcePerGame": "00:02"
}
}
]
}
]
},
"jerseyNumber": "46",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
},
{
"person": {
"id": 8481640,
"fullName": "Lean Bergmann",
"link": "/api/v1/people/8481640",
"firstName": "Lean",
"lastName": "Bergmann",
"primaryNumber": "45",
"birthDate": "1998-10-04",
"currentAge": 21,
"birthCity": "Hemer",
"birthCountry": "DEU",
"nationality": "DEU",
"height": "6' 2",
"weight": 205,
"active": true,
"alternateCaptain": false,
"captain": false,
"rookie": true,
"shootsCatches": "L",
"rosterStatus": "Y",
"currentTeam": {
"id": 28,
"name": "San Jose Sharks",
"link": "/api/v1/teams/28"
},
"primaryPosition": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
},
"stats": [
{
"type": {
"displayName": "statsSingleSeason"
},
"splits": [
{
"season": "20192020",
"stat": {
"timeOnIce": "99:13",
"assists": 1,
"goals": 0,
"pim": 4,
"shots": 11,
"games": 12,
"hits": 29,
"powerPlayGoals": 0,
"powerPlayPoints": 0,
"powerPlayTimeOnIce": "00:21",
"evenTimeOnIce": "98:05",
"penaltyMinutes": "4",
"faceOffPct": 0,
"shotPct": 0,
"gameWinningGoals": 0,
"overTimeGoals": 0,
"shortHandedGoals": 0,
"shortHandedPoints": 0,
"shortHandedTimeOnIce": "00:47",
"blocked": 5,
"plusMinus": -6,
"points": 1,
"shifts": 133,
"timeOnIcePerGame": "08:16",
"evenTimeOnIcePerGame": "08:10",
"shortHandedTimeOnIcePerGame": "00:03",
"powerPlayTimeOnIcePerGame": "00:01"
}
}
]
}
]
},
"jerseyNumber": "45",
"position": {
"code": "C",
"name": "Center",
"type": "Forward",
"abbreviation": "C"
}
}
],
"link": "/api/v1/teams/28/roster"
},
"shortName": "San Jose",
"officialSiteUrl": "http://www.sjsharks.com/",
"franchiseId": 29,
"active": true
}
]
}
''';

final String contentResp = '''
{
"copyright": "NHL and the NHL Shield are registered trademarks of the National Hockey League. NHL and NHL team marks are the property of the NHL and its teams. © NHL 2020. All Rights Reserved.",
"link": "/api/v1/game/2019021079/content",
"editorial": {
"preview": {
"title": "Preview",
"topicList": "",
"items": [
{
"type": "article",
"state": "A",
"date": "2020-03-11T14:35:54-0400",
"id": "316125026",
"headline": "Sharks at Blackhawks preview",
"subhead": "San Jose 3-7-1 in past 11 games; Chicago eight points out of first wild card from West",
"seoTitle": "San Jose Sharks Chicago Blackhawks Game Preview",
"seoDescription": "The Chicago Blackhawks can gain ground in the Western Conference wild-card race when they play the San Jose Sharks at United Center on Wednesday.",
"seoKeywords": "NHL, Hockey, Game Preview, San Jose Sharks, Chicago Blackhawks",
"slug": "san-jose-sharks-chicago-blackhawks-game-preview",
"commenting": true,
"tagline": "",
"tokenData": {
"token-CE8817379979291931C9B": {
"tokenGUID": "token-CE8817379979291931C9B",
"type": "playerCard",
"id": "8478414",
"teamId": "28",
"position": "Right Wing",
"name": "Timo Meier",
"seoName": "timo-meier"
},
"token-BC0EEFFE1876F68FBF0AE": {
"tokenGUID": "token-BC0EEFFE1876F68FBF0AE",
"type": "playerCard",
"id": "8474141",
"teamId": "16",
"position": "Right Wing",
"name": "Patrick Kane",
"seoName": "patrick-kane"
},
"token-7832C4B16969738ECEF96": {
"tokenGUID": "token-7832C4B16969738ECEF96",
"type": "playerCard",
"id": "8475169",
"teamId": "28",
"position": "Left Wing",
"name": "Evander Kane",
"seoName": "evander-kane"
},
"token-B840060CD46CD0BE281B7": {
"tokenGUID": "token-B840060CD46CD0BE281B7",
"type": "playerCard",
"id": "8479393",
"teamId": "28",
"position": "Center",
"name": "Noah Gregor",
"seoName": "noah-gregor"
},
"token-FDCB93D538A850E9E43AF": {
"tokenGUID": "token-FDCB93D538A850E9E43AF",
"type": "playerCard",
"id": "8478099",
"teamId": "28",
"position": "Right Wing",
"name": "Kevin Labanc",
"seoName": "kevin-labanc"
},
"token-9ED95B67544634C4D41AF": {
"tokenGUID": "token-9ED95B67544634C4D41AF",
"type": "playerCard",
"id": "8475834",
"teamId": "28",
"position": "Left Wing",
"name": "Marcus Sorensen",
"seoName": "marcus-sorensen"
},
"token-973E276F10924E402BFAB": {
"tokenGUID": "token-973E276F10924E402BFAB",
"type": "playerCard",
"id": "8466138",
"teamId": "28",
"position": "Center",
"name": "Joe Thornton",
"seoName": "joe-thornton"
},
"token-5858FD23562F09C3113AD": {
"tokenGUID": "token-5858FD23562F09C3113AD",
"type": "playerCard",
"id": "8477922",
"teamId": "28",
"position": "Center",
"name": "Melker Karlsson",
"seoName": "melker-karlsson"
},
"token-2328C4F92570AE5C8A98A": {
"tokenGUID": "token-2328C4F92570AE5C8A98A",
"type": "playerCard",
"id": "8481516",
"teamId": "28",
"position": "Center",
"name": "Joel Kellman",
"seoName": "joel-kellman"
},
"token-9EEADDAEAFA72BE0F969C": {
"tokenGUID": "token-9EEADDAEAFA72BE0F969C",
"type": "playerCard",
"id": "8476474",
"teamId": "28",
"position": "Right Wing",
"name": "Stefan Noesen",
"seoName": "stefan-noesen"
},
"token-C9E3154892FECB5A9E2B6": {
"tokenGUID": "token-C9E3154892FECB5A9E2B6",
"type": "playerCard",
"id": "8481640",
"teamId": "28",
"position": "Center",
"name": "Lean Bergmann",
"seoName": "lean-bergmann"
},
"token-A2E33E041449655A23B93": {
"tokenGUID": "token-A2E33E041449655A23B93",
"type": "playerCard",
"id": "8480965",
"teamId": "28",
"position": "Center",
"name": "Antti Suomela",
"seoName": "antti-suomela"
},
"token-2172B3E315B5EF191FDBF": {
"tokenGUID": "token-2172B3E315B5EF191FDBF",
"type": "playerCard",
"id": "8479580",
"teamId": "28",
"position": "Center",
"name": "Dylan Gambrell",
"seoName": "dylan-gambrell"
},
"token-EF5940E063FBECAF8049A": {
"tokenGUID": "token-EF5940E063FBECAF8049A",
"type": "playerCard",
"id": "8480160",
"teamId": "28",
"position": "Defenseman",
"name": "Radim Simek",
"seoName": "radim-simek"
},
"token-ECC99E593AA6672C84A8F": {
"tokenGUID": "token-ECC99E593AA6672C84A8F",
"type": "playerCard",
"id": "8470613",
"teamId": "28",
"position": "Defenseman",
"name": "Brent Burns",
"seoName": "brent-burns"
},
"token-C5F85D07EFD4F4750E7BF": {
"tokenGUID": "token-C5F85D07EFD4F4750E7BF",
"type": "playerCard",
"id": "8471709",
"teamId": "28",
"position": "Defenseman",
"name": "Marc-Edouard Vlasic",
"seoName": "marc-edouard-vlasic"
},
"token-1D35DEBA9CB5F6A4D6EB0": {
"tokenGUID": "token-1D35DEBA9CB5F6A4D6EB0",
"type": "playerCard",
"id": "8475869",
"teamId": "28",
"position": "Defenseman",
"name": "Brandon Davidson",
"seoName": "brandon-davidson"
},
"token-CE338F112185804208EA0": {
"tokenGUID": "token-CE338F112185804208EA0",
"type": "playerCard",
"id": "8481812",
"teamId": "28",
"position": "Defenseman",
"name": "Nikolai Knyzhov",
"seoName": "nikolai-knyzhov"
},
"token-3905F99589FF811C3279A": {
"tokenGUID": "token-3905F99589FF811C3279A",
"type": "playerCard",
"id": "8475841",
"teamId": "28",
"position": "Defenseman",
"name": "Tim Heed",
"seoName": "tim-heed"
},
"token-D800A0F935D4D0AB61484": {
"tokenGUID": "token-D800A0F935D4D0AB61484",
"type": "playerCard",
"id": "8477180",
"teamId": "28",
"position": "Goalie",
"name": "Aaron Dell",
"seoName": "aaron-dell"
},
"token-654050626AE533AEE9881": {
"tokenGUID": "token-654050626AE533AEE9881",
"type": "playerCard",
"id": "8474889",
"teamId": "28",
"position": "Goalie",
"name": "Martin Jones",
"seoName": "martin-jones"
},
"token-AF9DFDE7B68FA4B62318B": {
"tokenGUID": "token-AF9DFDE7B68FA4B62318B",
"type": "playerCard",
"id": "8480084",
"teamId": "28",
"position": "Defenseman",
"name": "Nick DeSimone",
"seoName": "nick-desimone"
},
"token-D432A781C0F769A7A9989": {
"tokenGUID": "token-D432A781C0F769A7A9989",
"type": "playerCard",
"id": "8480384",
"teamId": "28",
"position": "Center",
"name": "Alexander True",
"seoName": "alexander-true"
},
"token-332CCBAB3F1A909D93492": {
"tokenGUID": "token-332CCBAB3F1A909D93492",
"type": "playerCard",
"id": "8474053",
"teamId": "28",
"position": "Center",
"name": "Logan Couture",
"seoName": "logan-couture"
},
"token-DC219D004F9CEB2CD08B6": {
"tokenGUID": "token-DC219D004F9CEB2CD08B6",
"type": "playerCard",
"id": "8479983",
"teamId": "28",
"position": "Defenseman",
"name": "Mario Ferraro",
"seoName": "mario-ferraro"
},
"token-84BB19800C25CBA505B9F": {
"tokenGUID": "token-84BB19800C25CBA505B9F",
"type": "playerCard",
"id": "8476881",
"teamId": "28",
"position": "Center",
"name": "Tomas Hertl",
"seoName": "tomas-hertl"
},
"token-FCE19785DF1A6941BC18C": {
"tokenGUID": "token-FCE19785DF1A6941BC18C",
"type": "playerCard",
"id": "8474578",
"teamId": "28",
"position": "Defenseman",
"name": "Erik Karlsson",
"seoName": "erik-karlsson"
},
"token-8DD2FCBC27CBF8702F5A1": {
"tokenGUID": "token-8DD2FCBC27CBF8702F5A1",
"type": "playerCard",
"id": "8478136",
"teamId": "28",
"position": "Defenseman",
"name": "Jacob Middleton",
"seoName": "jacob-middleton"
},
"token-B3BE577B4D723943475A3": {
"tokenGUID": "token-B3BE577B4D723943475A3",
"type": "playerCard",
"id": "8474774",
"teamId": "28",
"position": "Defenseman",
"name": "Dalton Prout",
"seoName": "dalton-prout"
},
"token-C26F7B3606DD62EB7939F": {
"tokenGUID": "token-C26F7B3606DD62EB7939F",
"type": "playerCard",
"id": "8479337",
"teamId": "16",
"position": "Left Wing",
"name": "Alex DeBrincat",
"seoName": "alex-debrincat"
},
"token-192577F186079B20B4880": {
"tokenGUID": "token-192577F186079B20B4880",
"type": "playerCard",
"id": "8473604",
"teamId": "16",
"position": "Center",
"name": "Jonathan Toews",
"seoName": "jonathan-toews"
},
"token-88F4BDF1883A9F4FA628F": {
"tokenGUID": "token-88F4BDF1883A9F4FA628F",
"type": "playerCard",
"id": "8476438",
"teamId": "16",
"position": "Left Wing",
"name": "Brandon Saad",
"seoName": "brandon-saad"
},
"token-C862DD65763F085B615A5": {
"tokenGUID": "token-C862DD65763F085B615A5",
"type": "playerCard",
"id": "8479423",
"teamId": "16",
"position": "Left Wing",
"name": "Alex Nylander",
"seoName": "alex-nylander"
},
"token-93CE8CE4AB8EF7975A090": {
"tokenGUID": "token-93CE8CE4AB8EF7975A090",
"type": "playerCard",
"id": "8478440",
"teamId": "16",
"position": "Center",
"name": "Dylan Strome",
"seoName": "dylan-strome"
},
"token-82C6A39E1B9070D16B4B7": {
"tokenGUID": "token-82C6A39E1B9070D16B4B7",
"type": "playerCard",
"id": "8477330",
"teamId": "16",
"position": "Left Wing",
"name": "Dominik Kubalik",
"seoName": "dominik-kubalik"
},
"token-4264A77CA9B8749921CB8": {
"tokenGUID": "token-4264A77CA9B8749921CB8",
"type": "playerCard",
"id": "8481523",
"teamId": "16",
"position": "Center",
"name": "Kirby Dach",
"seoName": "kirby-dach"
},
"token-BBB3045BDE13EC67BCABF": {
"tokenGUID": "token-BBB3045BDE13EC67BCABF",
"type": "playerCard",
"id": "8479542",
"teamId": "16",
"position": "Left Wing",
"name": "Brandon Hagel",
"seoName": "brandon-hagel"
},
"token-BFE7BEEEC34C1FA3D0A94": {
"tokenGUID": "token-BFE7BEEEC34C1FA3D0A94",
"type": "playerCard",
"id": "8478146",
"teamId": "16",
"position": "Center",
"name": "Matthew Highmore",
"seoName": "matthew-highmore"
},
"token-5BF7478322B2F2A78F282": {
"tokenGUID": "token-5BF7478322B2F2A78F282",
"type": "playerCard",
"id": "8480144",
"teamId": "16",
"position": "Center",
"name": "David Kampf",
"seoName": "david-kampf"
},
"token-AC7FBB8BF47427F3E7AA1": {
"tokenGUID": "token-AC7FBB8BF47427F3E7AA1",
"type": "playerCard",
"id": "8477846",
"teamId": "16",
"position": "Center",
"name": "Ryan Carpenter",
"seoName": "ryan-carpenter"
},
"token-07EED6081C9ACFEBBE3A4": {
"tokenGUID": "token-07EED6081C9ACFEBBE3A4",
"type": "playerCard",
"id": "8470281",
"teamId": "16",
"position": "Defenseman",
"name": "Duncan Keith",
"seoName": "duncan-keith"
},
"token-35E233DCAFE4574ACA0B6": {
"tokenGUID": "token-35E233DCAFE4574ACA0B6",
"type": "playerCard",
"id": "8480814",
"teamId": "16",
"position": "Defenseman",
"name": "Nicolas Beaudin",
"seoName": "nicolas-beaudin"
},
"token-348D4A3B962E9A53A8B8D": {
"tokenGUID": "token-348D4A3B962E9A53A8B8D",
"type": "playerCard",
"id": "8476874",
"teamId": "16",
"position": "Defenseman",
"name": "Olli Maatta",
"seoName": "olli-maatta"
},
"token-909AB7B528D256A716586": {
"tokenGUID": "token-909AB7B528D256A716586",
"type": "playerCard",
"id": "8476886",
"teamId": "16",
"position": "Defenseman",
"name": "Slater Koekkoek",
"seoName": "slater-koekkoek"
},
"token-D68695E33AC5480101EB2": {
"tokenGUID": "token-D68695E33AC5480101EB2",
"type": "playerCard",
"id": "8479523",
"teamId": "16",
"position": "Defenseman",
"name": "Lucas Carlsson",
"seoName": "lucas-carlsson"
},
"token-DC10EE3DD9DD5C01FB093": {
"tokenGUID": "token-DC10EE3DD9DD5C01FB093",
"type": "playerCard",
"id": "8476473",
"teamId": "16",
"position": "Defenseman",
"name": "Connor Murphy",
"seoName": "connor-murphy"
},
"token-7E44526E030185A493A92": {
"tokenGUID": "token-7E44526E030185A493A92",
"type": "playerCard",
"id": "8470645",
"teamId": "16",
"position": "Goalie",
"name": "Corey Crawford",
"seoName": "corey-crawford"
},
"token-53CC5001FE51914D5BF87": {
"tokenGUID": "token-53CC5001FE51914D5BF87",
"type": "playerCard",
"id": "8476876",
"teamId": "16",
"position": "Goalie",
"name": "Malcolm Subban",
"seoName": "malcolm-subban"
},
"token-6740AD1D15AB93FB50F9A": {
"tokenGUID": "token-6740AD1D15AB93FB50F9A",
"type": "playerCard",
"id": "8476372",
"teamId": "16",
"position": "Defenseman",
"name": "Nick Seeler",
"seoName": "nick-seeler"
},
"token-D424F681940EAC1F7B0BF": {
"tokenGUID": "token-D424F681940EAC1F7B0BF",
"type": "playerCard",
"id": "8480871",
"teamId": "16",
"position": "Defenseman",
"name": "Adam Boqvist",
"seoName": "adam-boqvist"
},
"token-ED91A5FCF4AEA35B746A1": {
"tokenGUID": "token-ED91A5FCF4AEA35B746A1",
"type": "playerCard",
"id": "8479465",
"teamId": "16",
"position": "Center",
"name": "Drake Caggiula",
"seoName": "drake-caggiula"
},
"token-6813966161DA6C10B799B": {
"tokenGUID": "token-6813966161DA6C10B799B",
"type": "playerCard",
"id": "8475177",
"teamId": "16",
"position": "Defenseman",
"name": "Calvin de Haan",
"seoName": "calvin-de-haan"
},
"token-02B8A8534D1B7222FC585": {
"tokenGUID": "token-02B8A8534D1B7222FC585",
"type": "playerCard",
"id": "8470607",
"teamId": "16",
"position": "Defenseman",
"name": "Brent Seabrook",
"seoName": "brent-seabrook"
},
"token-902C96375E4B031DB94AD": {
"tokenGUID": "token-902C96375E4B031DB94AD",
"type": "playerCard",
"id": "8476381",
"teamId": "16",
"position": "Right Wing",
"name": "Andrew Shaw",
"seoName": "andrew-shaw"
},
"token-7C9E92F27C7A6B09283AC": {
"tokenGUID": "token-7C9E92F27C7A6B09283AC",
"type": "playerCard",
"id": "8474250",
"teamId": "16",
"position": "Center",
"name": "Zack Smith",
"seoName": "zack-smith"
}
},
"contributor": {
"contributors": [
{
"name": "Brandon Cain",
"twitter": ""
}
],
"source": "NHL.com Independent Correspondent"
},
"keywordsDisplay": [
{
"type": "language",
"value": "en",
"displayName": "English"
}
],
"keywordsAll": [
{
"type": "teamFileCode",
"value": "CHI",
"displayName": "Chicago Blackhawks"
},
{
"type": "primaryTag",
"value": "content|gamePreview",
"displayName": "game preview"
},
{
"type": "content",
"value": "gamePreview",
"displayName": "game preview"
},
{
"type": "teamId",
"value": "28",
"displayName": "San Jose Sharks"
},
{
"type": "teamFileCode",
"value": "SJS",
"displayName": "San Jose Sharks"
},
{
"type": "language",
"value": "en",
"displayName": "English"
},
{
"type": "bodyWordCount",
"value": "508",
"displayName": "private_508"
},
{
"type": "bodyParagraphCount",
"value": "36",
"displayName": "private_36"
},
{
"type": "teamId",
"value": "16",
"displayName": "Chicago Blackhawks"
},
{
"type": "previewWordCount",
"value": "35",
"displayName": "private_35"
},
{
"type": "previewParagraphCount",
"value": "4",
"displayName": "private_4"
},
{
"type": "gameId",
"value": "2019021079",
"displayName": "SJS at CHI - 03/11/2020 - 4:00:00 PM"
}
],
"approval": "",
"url": "/news/san-jose-sharks-chicago-blackhawks-game-preview/c-316125026?game_pk=2019021079",
"dataURI": "/nhl/id/v1/316125026/details/web-v1.json",
"primaryKeyword": {
"type": "content",
"value": "gamePreview",
"displayName": "game preview"
},
"media": {
"type": "photo",
"image": {
"title": "",
"altText": "",
"cuts": {
"2568x1444": {
"aspectRatio": "16:9",
"width": 2568,
"height": 1444,
"src": "https://nhl.bamcontent.com/images/photos/316124468/2568x1444/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316124468/2568x1444/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316124468/2568x1444/cut.jpg"
},
"2208x1242": {
"aspectRatio": "16:9",
"width": 2208,
"height": 1242,
"src": "https://nhl.bamcontent.com/images/photos/316124468/2208x1242/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316124468/2208x1242/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316124468/2208x1242/cut.jpg"
},
"2048x1152": {
"aspectRatio": "16:9",
"width": 2048,
"height": 1152,
"src": "https://nhl.bamcontent.com/images/photos/316124468/2048x1152/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316124468/2048x1152/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316124468/2048x1152/cut.jpg"
},
"1704x960": {
"aspectRatio": "16:9",
"width": 1704,
"height": 960,
"src": "https://nhl.bamcontent.com/images/photos/316124468/1704x960/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316124468/1704x960/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316124468/1704x960/cut.jpg"
},
"1536x864": {
"aspectRatio": "16:9",
"width": 1536,
"height": 864,
"src": "https://nhl.bamcontent.com/images/photos/316124468/1536x864/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316124468/1536x864/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316124468/1536x864/cut.jpg"
},
"1284x722": {
"aspectRatio": "16:9",
"width": 1284,
"height": 722,
"src": "https://nhl.bamcontent.com/images/photos/316124468/1284x722/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316124468/2208x1242/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316124468/2568x1444/cut.jpg"
},
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316124468/1136x640/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316124468/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316124468/1136x640/cut.jpg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316124468/1024x576/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316124468/2048x1152/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316124468/2208x1242/cut.jpg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316124468/960x540/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316124468/960x540/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316124468/960x540/cut.jpg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316124468/768x432/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316124468/1536x864/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316124468/2208x1242/cut.jpg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316124468/640x360/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316124468/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316124468/640x360/cut.jpg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316124468/568x320/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316124468/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316124468/1704x960/cut.jpg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316124468/372x210/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316124468/372x210/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316124468/372x210/cut.jpg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316124468/320x180/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316124468/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316124468/960x540/cut.jpg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316124468/248x140/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316124468/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316124468/248x140/cut.jpg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316124468/124x70/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316124468/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316124468/372x210/cut.jpg"
}
}
}
},
"preview": "<p><b>SHARKS (29-35-5) at BLACKHAWKS (31-30-8)</b></p><p><b>8 p.m. ET; NBCSN</b></p><p>&nbsp;</p><h5><b>The Game</b></h5><p>The Chicago Blackhawks can gain ground in the Western Conference wild-card race when they play the San Jose Sharks at United Center on Wednesday.</p>"
}
]
},
"articles": {
"title": "Articles",
"topicList": "",
"items": []
},
"recap": {
"title": "Recap",
"topicList": "",
"items": [
{
"type": "article",
"state": "A",
"date": "2020-03-12T00:28:35-0400",
"id": "316004682",
"headline": "Blackhawks defeat Sharks, close gap in Western wild-card race",
"subhead": "Kubalik scores 30th goal of season, Crawford makes 34 saves for Chicago",
"seoTitle": "san jose sharks chicago blackhawks game recap",
"seoDescription": "The Chicago Blackhawks gained ground in the Western Conference wild-card race with a 6-2 win against the San Jose Sharks at United Center on Wednesday.",
"seoKeywords": "NHL, hockey, news, San Jose Sharks, Chicago Blackhawks, game recap",
"slug": "san-jose-sharks-chicago-blackhawks-game-recap",
"commenting": true,
"tagline": "",
"tokenData": {
"token-CDEDD78E2966E661EADB0": {
"tokenGUID": "token-CDEDD78E2966E661EADB0",
"type": "hyperLink",
"href": "https://www.nhl.com/video/t-313536042",
"hrefMobile": "https://www.nhl.com/video/t-313536042"
},
"token-71986B736698F7793B99F": {
"tokenGUID": "token-71986B736698F7793B99F",
"type": "video",
"videoId": "316135764",
"href": "https://www.nhl.com/video/c-5356154",
"tags": [
{
"@type": "closed_captions_location_vtt",
"@value": "https://wsczoominwestus.azureedge.net/publish/b5fafb39-15af-4aa4-b57a-b732b42b5214.vtt",
"@displayName": "https://wsczoominwestus.azureedge.net/publish/b5fafb39-15af-4aa4-b57a-b732b42b5214.vtt"
},
{
"@type": "homeTeam",
"@value": "CHI",
"@displayName": "CHI"
},
{
"@type": "shareable",
"@value": "Y",
"@displayName": "Y"
},
{
"@type": "mediaplaybackid",
"@value": "5356154",
"@displayName": "5356154"
},
{
"@type": "homeTeamId",
"@value": "16",
"@displayName": "16"
},
{
"@type": "awayTeam",
"@value": "SJS",
"@displayName": "SJS"
},
{
"@type": "content_group_id",
"@value": "16",
"@displayName": "private_16"
},
{
"@type": "secure",
"@value": "N",
"@displayName": "N"
},
{
"@type": "awayTeamId",
"@value": "28",
"@displayName": "28"
},
{
"@type": "statsEventId",
"@value": "461",
"@displayName": "461"
},
{
"@type": "altLanguage",
"@value": "es",
"@displayName": "Spanish"
},
{
"@type": "closed_captions_location_ttml",
"@value": "https://wsczoominwestus.azureedge.net/publish/b5fafb39-15af-4aa4-b57a-b732b42b5214.ttml",
"@displayName": "https://wsczoominwestus.azureedge.net/publish/b5fafb39-15af-4aa4-b57a-b732b42b5214.ttml"
},
{
"@type": "playerId",
"@value": "8476438",
"@displayName": "Brandon Saad"
},
{
"@type": "teamFileCode",
"@value": "CHI",
"@displayName": "CHI"
},
{
"@type": "game_pk",
"@value": "2019021079",
"@displayName": "SJS at CHI - 03/11/2020 - 8:00:00 PM"
},
{
"@type": "assetXrefId",
"@value": "2020-03-12T01:38:06.9823754",
"@displayName": "2020-03-12T01:38:06.9823754"
},
{
"@type": "embeddable",
"@value": "Y",
"@displayName": "Y"
},
{
"@type": "altLanguage",
"@value": "ru",
"@displayName": "Russian"
},
{
"@type": "content",
"@value": "highlight",
"@displayName": "highlight"
},
{
"@type": "calendarEventId",
"@value": "221-2004553",
"@displayName": "San Jose Sharks vs. Chicago Blackhawks"
},
{
"@type": "mediaId",
"@value": "5356154",
"@displayName": "5356154"
},
{
"@type": "featurecontext",
"@value": "NHL.DEFAULT",
"@displayName": "NHL.DEFAULT"
},
{
"@type": "altLanguage",
"@value": "fr",
"@displayName": "French"
},
{
"@type": "content",
"@value": "realTimeHighlight",
"@displayName": "Real-Time Highlight"
},
{
"@type": "gameId",
"@value": "2019021079",
"@displayName": "SJS at CHI - 03/11/2020 - 8:00:00 PM"
},
{
"@type": "contentXrefSystem",
"@value": "NHL-WSC",
"@displayName": "NHL-WSC"
},
{
"@type": "searchable",
"@value": "Y",
"@displayName": "Searchable: Y"
},
{
"@type": "contentXrefId",
"@value": "2020-03-12T01:38:06.9823754",
"@displayName": "2020-03-12T01:38:06.9823754"
},
{
"@type": "plays",
"@value": "goal",
"@displayName": "goal"
},
{
"@type": "language",
"@value": "en",
"@displayName": "English"
},
{
"@type": "teamId",
"@value": "16",
"@displayName": "16"
},
{
"@type": "startDate",
"@value": "2020-03-12T00:00:00Z",
"@displayName": "2020-03-12T00:00:00Z"
},
{
"@type": "assetXrefSystem",
"@value": "NHL-WSC",
"@displayName": "NHL-WSC"
}
],
"date": "2020-03-11T20:00:00-0400",
"headline": "Saad goes five-hole in front",
"duration": "00:44",
"blurb": "SJS@CHI: Saad slips DeBrincat's pass past Dell",
"bigBlurb": "Brandon Saad receives a pass from Alex DeBrincat, dekes to his forehand and slips a shot through Aaron Dell's five-hole for a 3-1 lead",
"mediaPlaybackId": "5356154",
"image": {
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "316136044/1136x640/cut.jpg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "316136044/1024x576/cut.jpg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "316136044/960x540/cut.jpg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "316136044/768x432/cut.jpg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "316136044/640x360/cut.jpg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "316136044/568x320/cut.jpg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "316136044/372x210/cut.jpg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "316136044/320x180/cut.jpg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "316136044/248x140/cut.jpg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "316136044/124x70/cut.jpg"
}
}
},
"mediaURLS": {
"FLASH_192K_320X180": "https://hlslive-wsczoominwestus.med.nhl.com/publish/cd4b6236-552d-4472-a38d-4cea5dd91772.mp4",
"FLASH_450K_384x216": "https://hlslive-wsczoominwestus.med.nhl.com/publish/f583981b-7ffe-45c5-9d01-6e69ef9711ab.mp4",
"FLASH_1200K_640X360": "https://hlslive-wsczoominwestus.med.nhl.com/publish/77dbcc48-e5ca-4a35-83fe-64fd85a13b8c.mp4",
"FLASH_1800K_896x504": "https://hlslive-wsczoominwestus.med.nhl.com/publish/c74beed0-d9ca-480b-a9ec-6158ba091d9b.mp4",
"HTTP_CLOUD_MOBILE": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterMobile.m3u8",
"HTTP_CLOUD_TABLET": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterTablet.m3u8",
"HTTP_CLOUD_TABLET_60": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterTablet60.m3u8",
"HTTP_CLOUD_WIRED": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterWired.m3u8",
"HTTP_CLOUD_WIRED_60": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterWired60.m3u8",
"HTTP_CLOUD_WIRED_WEB": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterWiredWeb.m3u8"
}
},
"token-7CAA5B6185777FEFB0088": {
"tokenGUID": "token-7CAA5B6185777FEFB0088",
"type": "video",
"videoId": "316139462",
"href": "https://www.nhl.com/video/c-5356806",
"tags": [
{
"@type": "homeTeam",
"@value": "CHI",
"@displayName": "CHI"
},
{
"@type": "shareable",
"@value": "Y",
"@displayName": "Y"
},
{
"@type": "homeTeamId",
"@value": "16",
"@displayName": "16"
},
{
"@type": "secure",
"@value": "N",
"@displayName": "N"
},
{
"@type": "content_group_id",
"@value": "16",
"@displayName": "private_16"
},
{
"@type": "awayTeamId",
"@value": "28",
"@displayName": "28"
},
{
"@type": "awayTeam",
"@value": "SJS",
"@displayName": "SJS"
},
{
"@type": "closed_captions_location_vtt",
"@value": "https://wsczoominwestus.azureedge.net/publish/34c5d7ed-b4bc-4279-be4e-1432fcc469e2.vtt",
"@displayName": "https://wsczoominwestus.azureedge.net/publish/34c5d7ed-b4bc-4279-be4e-1432fcc469e2.vtt"
},
{
"@type": "contentXrefId",
"@value": "2020-03-12T02:37:35.7504382",
"@displayName": "2020-03-12T02:37:35.7504382"
},
{
"@type": "teamFileCode",
"@value": "CHI",
"@displayName": "CHI"
},
{
"@type": "mediaplaybackid",
"@value": "5356806",
"@displayName": "5356806"
},
{
"@type": "game_pk",
"@value": "2019021079",
"@displayName": "SJS at CHI - 03/11/2020 - 8:00:00 PM"
},
{
"@type": "embeddable",
"@value": "Y",
"@displayName": "Y"
},
{
"@type": "content",
"@value": "gameRecap",
"@displayName": "game recap"
},
{
"@type": "calendarEventId",
"@value": "221-2004553",
"@displayName": "San Jose Sharks vs. Chicago Blackhawks"
},
{
"@type": "featurecontext",
"@value": "NHL.DEFAULT",
"@displayName": "NHL.DEFAULT"
},
{
"@type": "altLanguage",
"@value": "fr",
"@displayName": "French"
},
{
"@type": "content",
"@value": "teamRecap",
"@displayName": "Team Recap"
},
{
"@type": "gameId",
"@value": "2019021079",
"@displayName": "SJS at CHI - 03/11/2020 - 8:00:00 PM"
},
{
"@type": "closed_captions_location_ttml",
"@value": "https://wsczoominwestus.azureedge.net/publish/34c5d7ed-b4bc-4279-be4e-1432fcc469e2.ttml",
"@displayName": "https://wsczoominwestus.azureedge.net/publish/34c5d7ed-b4bc-4279-be4e-1432fcc469e2.ttml"
},
{
"@type": "assetXrefId",
"@value": "2020-03-12T02:37:35.7504382",
"@displayName": "2020-03-12T02:37:35.7504382"
},
{
"@type": "mediaId",
"@value": "5356806",
"@displayName": "5356806"
},
{
"@type": "contentXrefSystem",
"@value": "NHL-WSC",
"@displayName": "NHL-WSC"
},
{
"@type": "searchable",
"@value": "Y",
"@displayName": "Searchable: Y"
},
{
"@type": "language",
"@value": "en",
"@displayName": "English"
},
{
"@type": "teamId",
"@value": "16",
"@displayName": "16"
},
{
"@type": "startDate",
"@value": "2020-03-12T00:00:00Z",
"@displayName": "2020-03-12T00:00:00Z"
},
{
"@type": "assetXrefSystem",
"@value": "NHL-WSC",
"@displayName": "NHL-WSC"
}
],
"date": "2020-03-11T20:00:00-0400",
"headline": "Recap: SJS 2, CHI 6",
"duration": "05:02",
"blurb": "Kane's two goals lead Blackhawks past Sharks",
"bigBlurb": "Patrick Kane scored two goals and Alex DeBrincat collected two assists, leading the Blackhawks to a 6-2 victory against the Sharks at home",
"mediaPlaybackId": "5356806",
"image": {
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "316139238/1136x640/cut.jpg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "316139238/1024x576/cut.jpg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "316139238/960x540/cut.jpg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "316139238/768x432/cut.jpg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "316139238/640x360/cut.jpg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "316139238/568x320/cut.jpg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "316139238/372x210/cut.jpg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "316139238/320x180/cut.jpg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "316139238/248x140/cut.jpg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "316139238/124x70/cut.jpg"
}
}
},
"mediaURLS": {
"FLASH_192K_320X180": "https://hlslive-wsczoominwestus.med.nhl.com/publish/85ad83a0-434c-4bbc-ad6e-cc579d21afa8.mp4",
"FLASH_450K_384x216": "https://hlslive-wsczoominwestus.med.nhl.com/publish/97c29acb-014b-485e-b562-f5eb17e1def2.mp4",
"FLASH_1200K_640X360": "https://hlslive-wsczoominwestus.med.nhl.com/publish/d43da7bf-9f68-4469-9337-5d61504b7dd5.mp4",
"FLASH_1800K_896x504": "https://hlslive-wsczoominwestus.med.nhl.com/publish/a2442933-e96c-4216-acc2-13d840ede0be.mp4",
"HTTP_CLOUD_MOBILE": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286806/MasterMobile.m3u8",
"HTTP_CLOUD_TABLET": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286806/MasterTablet.m3u8",
"HTTP_CLOUD_TABLET_60": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286806/MasterTablet60.m3u8",
"HTTP_CLOUD_WIRED": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286806/MasterWired.m3u8",
"HTTP_CLOUD_WIRED_60": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286806/MasterWired60.m3u8",
"HTTP_CLOUD_WIRED_WEB": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286806/MasterWiredWeb.m3u8"
}
},
"token-28EEA381617DF9986AC93": {
"tokenGUID": "token-28EEA381617DF9986AC93",
"type": "video",
"videoId": "316134602",
"href": "https://www.nhl.com/video/c-5355504",
"tags": [
{
"@type": "shareable",
"@value": "Y",
"@displayName": "Y"
},
{
"@type": "homeTeam",
"@value": "CHI",
"@displayName": "CHI"
},
{
"@type": "homeTeamId",
"@value": "16",
"@displayName": "16"
},
{
"@type": "secure",
"@value": "N",
"@displayName": "N"
},
{
"@type": "awayTeamId",
"@value": "28",
"@displayName": "28"
},
{
"@type": "awayTeam",
"@value": "SJS",
"@displayName": "SJS"
},
{
"@type": "statsEventId",
"@value": "43",
"@displayName": "43"
},
{
"@type": "closed_captions_location_ttml",
"@value": "https://wsczoominwestus.azureedge.net/publish/dc13be9a-d1f8-4516-b986-e4fa213cc3d7.ttml",
"@displayName": "https://wsczoominwestus.azureedge.net/publish/dc13be9a-d1f8-4516-b986-e4fa213cc3d7.ttml"
},
{
"@type": "game_pk",
"@value": "2019021079",
"@displayName": "SJS at CHI - 03/11/2020 - 8:00:00 PM"
},
{
"@type": "embeddable",
"@value": "Y",
"@displayName": "Y"
},
{
"@type": "teamId",
"@value": "28",
"@displayName": "28"
},
{
"@type": "contentXrefId",
"@value": "2020-03-12T00:34:54.7105869",
"@displayName": "2020-03-12T00:34:54.7105869"
},
{
"@type": "content",
"@value": "highlight",
"@displayName": "highlight"
},
{
"@type": "calendarEventId",
"@value": "221-2004553",
"@displayName": "San Jose Sharks vs. Chicago Blackhawks"
},
{
"@type": "content_group_id",
"@value": "28",
"@displayName": "private_28"
},
{
"@type": "mediaId",
"@value": "5355504",
"@displayName": "5355504"
},
{
"@type": "featurecontext",
"@value": "NHL.DEFAULT",
"@displayName": "NHL.DEFAULT"
},
{
"@type": "altLanguage",
"@value": "fr",
"@displayName": "French"
},
{
"@type": "plays",
"@value": "powerPlay",
"@displayName": "power play"
},
{
"@type": "plays",
"@value": "powerPlayGoal",
"@displayName": "Power Play Goal"
},
{
"@type": "content",
"@value": "realTimeHighlight",
"@displayName": "Real-Time Highlight"
},
{
"@type": "gameId",
"@value": "2019021079",
"@displayName": "SJS at CHI - 03/11/2020 - 8:00:00 PM"
},
{
"@type": "mediaplaybackid",
"@value": "5355504",
"@displayName": "5355504"
},
{
"@type": "playerId",
"@value": "8475169",
"@displayName": "Evander Kane"
},
{
"@type": "assetXrefId",
"@value": "2020-03-12T00:34:54.7105869",
"@displayName": "2020-03-12T00:34:54.7105869"
},
{
"@type": "contentXrefSystem",
"@value": "NHL-WSC",
"@displayName": "NHL-WSC"
},
{
"@type": "searchable",
"@value": "Y",
"@displayName": "Searchable: Y"
},
{
"@type": "plays",
"@value": "goal",
"@displayName": "goal"
},
{
"@type": "teamFileCode",
"@value": "SJS",
"@displayName": "SJS"
},
{
"@type": "closed_captions_location_vtt",
"@value": "https://wsczoominwestus.azureedge.net/publish/dc13be9a-d1f8-4516-b986-e4fa213cc3d7.vtt",
"@displayName": "https://wsczoominwestus.azureedge.net/publish/dc13be9a-d1f8-4516-b986-e4fa213cc3d7.vtt"
},
{
"@type": "language",
"@value": "en",
"@displayName": "English"
},
{
"@type": "startDate",
"@value": "2020-03-12T00:00:00Z",
"@displayName": "2020-03-12T00:00:00Z"
},
{
"@type": "assetXrefSystem",
"@value": "NHL-WSC",
"@displayName": "NHL-WSC"
}
],
"date": "2020-03-11T20:00:00-0400",
"headline": "Kane opens scoring with PPG",
"duration": "00:48",
"blurb": "SJS@CHI: Kane nets redirection from slot for PPG",
"bigBlurb": "Joe Thornton sends a pass to Evander Kane, who deflects the puck past Corey Crawford on the power play to give the Sharks a 1-0 lead in the 1st",
"mediaPlaybackId": "5355504",
"image": {
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "316134926/1136x640/cut.jpeg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "316134926/1024x576/cut.jpeg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "316134926/960x540/cut.jpeg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "316134926/768x432/cut.jpeg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "316134926/640x360/cut.jpeg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "316134926/568x320/cut.jpeg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "316134926/372x210/cut.jpeg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "316134926/320x180/cut.jpeg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "316134926/248x140/cut.jpeg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "316134926/124x70/cut.jpeg"
}
}
},
"mediaURLS": {
"FLASH_192K_320X180": "https://hlslive-wsczoominwestus.med.nhl.com/publish/908b987c-df59-4f89-a8a7-72742bd74c2b.mp4",
"FLASH_450K_384x216": "https://hlslive-wsczoominwestus.med.nhl.com/publish/2e122ff1-39b5-413c-98b8-1abce4ad6202.mp4",
"FLASH_1200K_640X360": "https://hlslive-wsczoominwestus.med.nhl.com/publish/a672d40a-211a-4fe5-9d08-ec474ceb02c7.mp4",
"FLASH_1800K_896x504": "https://hlslive-wsczoominwestus.med.nhl.com/publish/a7cf8598-3112-4697-8935-cc098326ed7c.mp4",
"HTTP_CLOUD_MOBILE": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterMobile.m3u8",
"HTTP_CLOUD_TABLET": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterTablet.m3u8",
"HTTP_CLOUD_TABLET_60": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterTablet60.m3u8",
"HTTP_CLOUD_WIRED": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterWired.m3u8",
"HTTP_CLOUD_WIRED_60": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterWired60.m3u8",
"HTTP_CLOUD_WIRED_WEB": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterWiredWeb.m3u8"
}
},
"token-369491779EF67CA18228A": {
"tokenGUID": "token-369491779EF67CA18228A",
"type": "video",
"videoId": "316134994",
"href": "https://www.nhl.com/video/c-5356140",
"tags": [
{
"@type": "homeTeam",
"@value": "CHI",
"@displayName": "CHI"
},
{
"@type": "shareable",
"@value": "Y",
"@displayName": "Y"
},
{
"@type": "assetXrefId",
"@value": "2020-03-12T01:35:06.2603606",
"@displayName": "2020-03-12T01:35:06.2603606"
},
{
"@type": "homeTeamId",
"@value": "16",
"@displayName": "16"
},
{
"@type": "secure",
"@value": "N",
"@displayName": "N"
},
{
"@type": "content_group_id",
"@value": "16",
"@displayName": "private_16"
},
{
"@type": "awayTeamId",
"@value": "28",
"@displayName": "28"
},
{
"@type": "awayTeam",
"@value": "SJS",
"@displayName": "SJS"
},
{
"@type": "altLanguage",
"@value": "es",
"@displayName": "Spanish"
},
{
"@type": "teamFileCode",
"@value": "CHI",
"@displayName": "CHI"
},
{
"@type": "contentXrefId",
"@value": "2020-03-12T01:35:06.2603606",
"@displayName": "2020-03-12T01:35:06.2603606"
},
{
"@type": "statsEventId",
"@value": "458",
"@displayName": "458"
},
{
"@type": "game_pk",
"@value": "2019021079",
"@displayName": "SJS at CHI - 03/11/2020 - 8:00:00 PM"
},
{
"@type": "playerId",
"@value": "8479337",
"@displayName": "Alex DeBrincat"
},
{
"@type": "embeddable",
"@value": "Y",
"@displayName": "Y"
},
{
"@type": "playerId",
"@value": "8474141",
"@displayName": "Patrick Kane"
},
{
"@type": "mediaId",
"@value": "5356140",
"@displayName": "5356140"
},
{
"@type": "closed_captions_location_ttml",
"@value": "https://wsczoominwestus.azureedge.net/publish/d4036b66-18d8-4cc1-8896-05c5ebfcfed1.ttml",
"@displayName": "https://wsczoominwestus.azureedge.net/publish/d4036b66-18d8-4cc1-8896-05c5ebfcfed1.ttml"
},
{
"@type": "mediaplaybackid",
"@value": "5356140",
"@displayName": "5356140"
},
{
"@type": "altLanguage",
"@value": "ru",
"@displayName": "Russian"
},
{
"@type": "content",
"@value": "highlight",
"@displayName": "highlight"
},
{
"@type": "calendarEventId",
"@value": "221-2004553",
"@displayName": "San Jose Sharks vs. Chicago Blackhawks"
},
{
"@type": "featurecontext",
"@value": "NHL.DEFAULT",
"@displayName": "NHL.DEFAULT"
},
{
"@type": "altLanguage",
"@value": "fr",
"@displayName": "French"
},
{
"@type": "plays",
"@value": "powerPlay",
"@displayName": "power play"
},
{
"@type": "plays",
"@value": "powerPlayGoal",
"@displayName": "Power Play Goal"
},
{
"@type": "content",
"@value": "realTimeHighlight",
"@displayName": "Real-Time Highlight"
},
{
"@type": "gameId",
"@value": "2019021079",
"@displayName": "SJS at CHI - 03/11/2020 - 8:00:00 PM"
},
{
"@type": "program",
"@value": "gorgeousGoals",
"@displayName": "Gorgeous Goals"
},
{
"@type": "program",
"@value": "teamworkMoments",
"@displayName": "Top Teamwork Moments"
},
{
"@type": "closed_captions_location_vtt",
"@value": "https://wsczoominwestus.azureedge.net/publish/d4036b66-18d8-4cc1-8896-05c5ebfcfed1.vtt",
"@displayName": "https://wsczoominwestus.azureedge.net/publish/d4036b66-18d8-4cc1-8896-05c5ebfcfed1.vtt"
},
{
"@type": "contentXrefSystem",
"@value": "NHL-WSC",
"@displayName": "NHL-WSC"
},
{
"@type": "searchable",
"@value": "Y",
"@displayName": "Searchable: Y"
},
{
"@type": "plays",
"@value": "goal",
"@displayName": "goal"
},
{
"@type": "language",
"@value": "en",
"@displayName": "English"
},
{
"@type": "teamId",
"@value": "16",
"@displayName": "16"
},
{
"@type": "startDate",
"@value": "2020-03-12T00:00:00Z",
"@displayName": "2020-03-12T00:00:00Z"
},
{
"@type": "assetXrefSystem",
"@value": "NHL-WSC",
"@displayName": "NHL-WSC"
}
],
"date": "2020-03-11T20:00:00-0400",
"headline": "Kane, DeBrincat connect for PPG",
"duration": "00:51",
"blurb": "SJS@CHI: Kane taps DeBrincat's nice feed home for PPG",
"bigBlurb": "Alex DeBrincat sends a pretty backdoor pass to Patrick Kane, who taps the puck past Aaron Dell for a power-play goal and a 2-1 lead in the 2nd",
"mediaPlaybackId": "5356140",
"image": {
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "316136260/1136x640/cut.jpeg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "316136260/1024x576/cut.jpeg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "316136260/960x540/cut.jpeg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "316136260/768x432/cut.jpeg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "316136260/640x360/cut.jpeg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "316136260/568x320/cut.jpeg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "316136260/372x210/cut.jpeg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "316136260/320x180/cut.jpeg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "316136260/248x140/cut.jpeg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "316136260/124x70/cut.jpeg"
}
}
},
"mediaURLS": {
"FLASH_192K_320X180": "https://hlslive-wsczoominwestus.med.nhl.com/publish/a6b5b899-57ec-491f-ac7f-5270df77d7bd.mp4",
"FLASH_450K_384x216": "https://hlslive-wsczoominwestus.med.nhl.com/publish/d9f0768d-8893-4a0a-b3a4-0938b5190a87.mp4",
"FLASH_1200K_640X360": "https://hlslive-wsczoominwestus.med.nhl.com/publish/e94caf54-9622-4a42-8924-384a5dc79f60.mp4",
"FLASH_1800K_896x504": "https://hlslive-wsczoominwestus.med.nhl.com/publish/28f0831d-e5cd-4f78-9f8d-4a62f3d2f275.mp4",
"HTTP_CLOUD_MOBILE": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterMobile.m3u8",
"HTTP_CLOUD_TABLET": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterTablet.m3u8",
"HTTP_CLOUD_TABLET_60": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterTablet60.m3u8",
"HTTP_CLOUD_WIRED": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterWired.m3u8",
"HTTP_CLOUD_WIRED_60": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterWired60.m3u8",
"HTTP_CLOUD_WIRED_WEB": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterWiredWeb.m3u8"
}
},
"token-2E94574A10CFF28CC3E81": {
"tokenGUID": "token-2E94574A10CFF28CC3E81",
"type": "playerCard",
"id": "8474141",
"teamId": "16",
"position": "Right Wing",
"name": "Patrick Kane",
"seoName": "patrick-kane"
},
"token-3FCA7C867552BC08126B4": {
"tokenGUID": "token-3FCA7C867552BC08126B4",
"type": "playerCard",
"id": "8477330",
"teamId": "16",
"position": "Left Wing",
"name": "Dominik Kubalik",
"seoName": "dominik-kubalik"
},
"token-373AE4B742F3B6A1668B0": {
"tokenGUID": "token-373AE4B742F3B6A1668B0",
"type": "playerCard",
"id": "8479337",
"teamId": "16",
"position": "Left Wing",
"name": "Alex DeBrincat",
"seoName": "alex-debrincat"
},
"token-1AA977AD8883BC1E289A0": {
"tokenGUID": "token-1AA977AD8883BC1E289A0",
"type": "playerCard",
"id": "8470645",
"teamId": "16",
"position": "Goalie",
"name": "Corey Crawford",
"seoName": "corey-crawford"
},
"token-1C95DC5E360638BC3C082": {
"tokenGUID": "token-1C95DC5E360638BC3C082",
"type": "playerCard",
"id": "8475169",
"teamId": "28",
"position": "Left Wing",
"name": "Evander Kane",
"seoName": "evander-kane"
},
"token-6146DD4AF4F7E7E74A191": {
"tokenGUID": "token-6146DD4AF4F7E7E74A191",
"type": "playerCard",
"id": "8478414",
"teamId": "28",
"position": "Right Wing",
"name": "Timo Meier",
"seoName": "timo-meier"
},
"token-17978C69DCF62D20AB693": {
"tokenGUID": "token-17978C69DCF62D20AB693",
"type": "playerCard",
"id": "8477180",
"teamId": "28",
"position": "Goalie",
"name": "Aaron Dell",
"seoName": "aaron-dell"
},
"token-9D0BC81FC8741590728A3": {
"tokenGUID": "token-9D0BC81FC8741590728A3",
"type": "playerCard",
"id": "8470281",
"teamId": "16",
"position": "Defenseman",
"name": "Duncan Keith",
"seoName": "duncan-keith"
},
"token-2D98ED16785BCC2DD7194": {
"tokenGUID": "token-2D98ED16785BCC2DD7194",
"type": "playerCard",
"id": "8476438",
"teamId": "16",
"position": "Left Wing",
"name": "Brandon Saad",
"seoName": "brandon-saad"
},
"token-68D122B9496DE98C48788": {
"tokenGUID": "token-68D122B9496DE98C48788",
"type": "playerCard",
"id": "8479423",
"teamId": "16",
"position": "Left Wing",
"name": "Alex Nylander",
"seoName": "alex-nylander"
},
"token-9A252EE46F7CD9D5D96A8": {
"tokenGUID": "token-9A252EE46F7CD9D5D96A8",
"type": "playerCard",
"id": "8466138",
"teamId": "28",
"position": "Center",
"name": "Joe Thornton",
"seoName": "joe-thornton"
},
"token-EE8E973DC1D9A67DBB891": {
"tokenGUID": "token-EE8E973DC1D9A67DBB891",
"type": "playerCard",
"id": "8480814",
"teamId": "16",
"position": "Defenseman",
"name": "Nicolas Beaudin",
"seoName": "nicolas-beaudin"
},
"token-69695E3EE33258C9352AD": {
"tokenGUID": "token-69695E3EE33258C9352AD",
"type": "playerCard",
"id": "8479542",
"teamId": "16",
"position": "Left Wing",
"name": "Brandon Hagel",
"seoName": "brandon-hagel"
},
"token-413FB14D29853E6585094": {
"tokenGUID": "token-413FB14D29853E6585094",
"type": "playerCard",
"id": "8478550",
"teamId": "3",
"position": "Left Wing",
"name": "Artemi Panarin",
"seoName": "artemi-panarin"
}
},
"contributor": {
"contributors": [
{
"name": "Brandon Cain",
"twitter": ""
}
],
"source": "NHL.com Independent Correspondent"
},
"keywordsDisplay": [
{
"type": "language",
"value": "en",
"displayName": "English"
}
],
"keywordsAll": [
{
"type": "primaryTag",
"value": "content|gameRecap",
"displayName": "game recap"
},
{
"type": "content",
"value": "sjsNews",
"displayName": "Sharks News"
},
{
"type": "gameId",
"value": "2019021079",
"displayName": "SJS at CHI - 03/11/2020 - 4:00:00 PM"
},
{
"type": "previewParagraphCount",
"value": "1",
"displayName": "private_1"
},
{
"type": "teamFileCode",
"value": "CHI",
"displayName": "Chicago Blackhawks"
},
{
"type": "content",
"value": "news",
"displayName": "news"
},
{
"type": "previewWordCount",
"value": "27",
"displayName": "private_27"
},
{
"type": "teamId",
"value": "28",
"displayName": "San Jose Sharks"
},
{
"type": "teamFileCode",
"value": "SJS",
"displayName": "San Jose Sharks"
},
{
"type": "language",
"value": "en",
"displayName": "English"
},
{
"type": "bodyParagraphCount",
"value": "25",
"displayName": "private_25"
},
{
"type": "teamId",
"value": "16",
"displayName": "Chicago Blackhawks"
},
{
"type": "content",
"value": "gameRecap",
"displayName": "game recap"
},
{
"type": "bodyWordCount",
"value": "771",
"displayName": "private_771"
}
],
"approval": "",
"url": "/news/san-jose-sharks-chicago-blackhawks-game-recap/c-316004682?game_pk=2019021079",
"dataURI": "/nhl/id/v1/316004682/details/web-v1.json",
"primaryKeyword": {
"type": "content",
"value": "gameRecap",
"displayName": "game recap"
},
"media": {
"type": "video",
"id": "5356785",
"date": "2020-03-11T20:00:00-0400",
"title": "Kubalik's blistering one-timer",
"blurb": "SJS@CHI: Kubalik goes top shelf off Dach's slick feed",
"description": "Kirby Dach drops a pass to Dominik Kubalik, who hammers a one-timer top shelf over Aaron Dell's glove for a 6-2 lead in the 3rd period",
"duration": "00:47",
"authFlow": false,
"mediaPlaybackId": "5356785",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "content",
"value": "highlight",
"displayName": "highlight"
},
{
"type": "content",
"value": "realTimeHighlight",
"displayName": "Real-Time Highlight"
},
{
"type": "statsEventId",
"value": "669",
"displayName": "669"
},
{
"type": "language",
"value": "en",
"displayName": "English"
},
{
"type": "teamId",
"value": "16",
"displayName": "16"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316138532/1136x640/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/1136x640/cut.jpg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316138532/1024x576/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/1024x576/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/1024x576/cut.jpg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316138532/960x540/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/960x540/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/960x540/cut.jpg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316138532/768x432/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/768x432/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/768x432/cut.jpg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316138532/640x360/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/640x360/cut.jpg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316138532/568x320/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/568x320/cut.jpg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316138532/372x210/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/372x210/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/372x210/cut.jpg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316138532/320x180/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/960x540/cut.jpg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316138532/248x140/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/248x140/cut.jpg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316138532/124x70/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/372x210/cut.jpg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/cb1417c3-bd68-4647-ae78-e182698c5faf.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/05d66888-d551-4479-a935-a9e5fce9a61d.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/44539768-0eb8-4e75-a2c8-cf1d0e9ade4c.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/559be6f4-69bc-4393-8265-386a94c44187.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterWiredWeb.m3u8"
}
]
},
"preview": "<p><b>CHICAGO --</b> The Chicago Blackhawks gained ground in the Western Conference wild-card race with a 6-2 win against the San Jose Sharks at United Center on Wednesday.</p>"
}
]
}
},
"media": {
"epg": [
{
"title": "NHLTV",
"platform": "web",
"items": [
{
"guid": "76271f9e-dbef-424f-af66-da940a9304bf",
"mediaState": "MEDIA_ARCHIVE",
"mediaPlaybackId": "71314003",
"mediaFeedType": "NATIONAL",
"callLetters": "NBCSN",
"eventId": "221-2004553",
"language": "eng",
"freeGame": true,
"feedName": "",
"gamePlus": false
},
{
"guid": "ad6589f4-dd2c-4dc2-8757-828eef349a4b",
"mediaState": "MEDIA_ARCHIVE",
"mediaPlaybackId": "71314703",
"mediaFeedType": "COMPOSITE",
"callLetters": "",
"eventId": "221-2004553",
"language": "eng",
"freeGame": true,
"feedName": "Multi-Cam 1",
"gamePlus": false
}
]
},
{
"title": "Audio",
"items": [
{
"mediaState": "MEDIA_DONE",
"mediaPlaybackId": "71314303",
"mediaFeedType": "HOME",
"callLetters": "WGN",
"eventId": "221-2004553",
"language": "eng",
"freeGame": false,
"feedName": "",
"gamePlus": false
},
{
"mediaState": "MEDIA_DONE",
"mediaPlaybackId": "71314403",
"mediaFeedType": "AWAY",
"callLetters": "KFOX",
"eventId": "221-2004553",
"language": "eng",
"freeGame": false,
"feedName": "",
"gamePlus": false
}
]
},
{
"title": "Extended Highlights",
"topicList": "313536042",
"items": [
{
"type": "video",
"id": "5356805",
"date": "2020-03-11T20:00:00-0400",
"title": "SJS @ CHI",
"blurb": "Condensed Game: Sharks @ Blackhawks",
"description": "Extended highlights of the San Jose Sharks at the Chicago Blackhawks",
"duration": "08:59",
"authFlow": false,
"mediaPlaybackId": "5356805",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "teamId",
"value": "28",
"displayName": "28"
},
{
"type": "content",
"value": "extendedHighlights",
"displayName": "Condensed Game"
},
{
"type": "language",
"value": "en",
"displayName": "English"
},
{
"type": "teamId",
"value": "16",
"displayName": "16"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316140018/1136x640/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316140018/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316140018/1136x640/cut.jpg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316140018/1024x576/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316140018/1024x576/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316140018/1024x576/cut.jpg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316140018/960x540/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316140018/960x540/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316140018/960x540/cut.jpg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316140018/768x432/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316140018/768x432/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316140018/768x432/cut.jpg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316140018/640x360/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316140018/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316140018/640x360/cut.jpg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316140018/568x320/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316140018/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316140018/568x320/cut.jpg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316140018/372x210/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316140018/372x210/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316140018/372x210/cut.jpg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316140018/320x180/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316140018/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316140018/960x540/cut.jpg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316140018/248x140/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316140018/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316140018/248x140/cut.jpg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316140018/124x70/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316140018/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316140018/372x210/cut.jpg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/09d19818-804b-4023-abe2-83d8997303c0.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/6fb791ef-5d32-45f7-913d-19a1d6caf8e8.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/c51d0ec5-b528-4943-9964-c529d2d0497c.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/b3084343-f56e-4bb9-8c2b-69578ef57207.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286807/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286807/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286807/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286807/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286807/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286807/MasterWiredWeb.m3u8"
}
]
}
]
},
{
"title": "Recap",
"topicList": "313536042",
"items": [
{
"type": "video",
"id": "5356806",
"date": "2020-03-11T20:00:00-0400",
"title": "Recap: SJS 2, CHI 6",
"blurb": "Kane's two goals lead Blackhawks past Sharks",
"description": "Patrick Kane scored two goals and Alex DeBrincat collected two assists, leading the Blackhawks to a 6-2 victory against the Sharks at home",
"duration": "05:02",
"authFlow": false,
"mediaPlaybackId": "5356806",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "content",
"value": "gameRecap",
"displayName": "game recap"
},
{
"type": "content",
"value": "teamRecap",
"displayName": "Team Recap"
},
{
"type": "language",
"value": "en",
"displayName": "English"
},
{
"type": "teamId",
"value": "16",
"displayName": "16"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316139238/1136x640/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316139238/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316139238/1136x640/cut.jpg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316139238/1024x576/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316139238/1024x576/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316139238/1024x576/cut.jpg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316139238/960x540/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316139238/960x540/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316139238/960x540/cut.jpg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316139238/768x432/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316139238/768x432/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316139238/768x432/cut.jpg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316139238/640x360/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316139238/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316139238/640x360/cut.jpg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316139238/568x320/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316139238/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316139238/568x320/cut.jpg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316139238/372x210/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316139238/372x210/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316139238/372x210/cut.jpg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316139238/320x180/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316139238/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316139238/960x540/cut.jpg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316139238/248x140/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316139238/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316139238/248x140/cut.jpg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316139238/124x70/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316139238/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316139238/372x210/cut.jpg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/85ad83a0-434c-4bbc-ad6e-cc579d21afa8.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/97c29acb-014b-485e-b562-f5eb17e1def2.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/d43da7bf-9f68-4469-9337-5d61504b7dd5.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/a2442933-e96c-4216-acc2-13d840ede0be.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286806/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286806/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286806/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286806/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286806/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286806/MasterWiredWeb.m3u8"
}
]
}
]
},
{
"title": "Power Play",
"items": []
}
],
"milestones": {
"title": "Milestones",
"streamStart": "2020-03-12T00:00:32+0000",
"items": [
{
"title": "Broadcast Start",
"description": "Broadcast Start",
"type": "BROADCAST_START",
"timeAbsolute": "2020-03-12T00:00:34+0000",
"timeOffset": "2",
"period": "",
"statsEventId": "",
"teamId": "",
"playerId": "",
"periodTime": "",
"ordinalNum": "",
"highlight": {}
},
{
"title": "Period Start",
"description": "Period Start",
"type": "PERIOD_START",
"timeAbsolute": "2020-03-12T00:10:45+0000",
"timeOffset": "613",
"period": "1",
"statsEventId": "8",
"teamId": "",
"playerId": "",
"periodTime": "00:00",
"ordinalNum": "1st",
"highlight": {}
},
{
"title": "Shot",
"description": "Joel Kellman Wrist Shot saved by Corey Crawford",
"type": "SHOT",
"timeAbsolute": "2020-03-12T00:16:36+0000",
"timeOffset": "964",
"period": "1",
"statsEventId": "18",
"teamId": "28",
"playerId": "8481516",
"periodTime": "04:35",
"ordinalNum": "1st",
"highlight": {}
},
{
"title": "Shot",
"description": "Noah Gregor Wrist Shot saved by Corey Crawford",
"type": "SHOT",
"timeAbsolute": "2020-03-12T00:17:39+0000",
"timeOffset": "1027",
"period": "1",
"statsEventId": "23",
"teamId": "28",
"playerId": "8479393",
"periodTime": "05:39",
"ordinalNum": "1st",
"highlight": {}
},
{
"title": "Goal",
"description": "Evander Kane (26) Tip-In, assists: Joe Thornton (24), Timo Meier (27)",
"type": "GOAL",
"timeAbsolute": "2020-03-12T00:27:34+0000",
"timeOffset": "1622",
"period": "1",
"statsEventId": "43",
"teamId": "28",
"playerId": "8475169",
"periodTime": "10:49",
"ordinalNum": "1st",
"highlight": {
"type": "video",
"id": "5355504",
"date": "2020-03-11T20:00:00-0400",
"title": "Kane opens scoring with PPG",
"blurb": "SJS@CHI: Kane nets redirection from slot for PPG",
"description": "Joe Thornton sends a pass to Evander Kane, who deflects the puck past Corey Crawford on the power play to give the Sharks a 1-0 lead in the 1st",
"duration": "00:48",
"authFlow": false,
"mediaPlaybackId": "5355504",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "statsEventId",
"value": "43",
"displayName": "43"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "teamId",
"value": "28",
"displayName": "28"
},
{
"type": "content",
"value": "highlight",
"displayName": "highlight"
},
{
"type": "content",
"value": "realTimeHighlight",
"displayName": "Real-Time Highlight"
},
{
"type": "language",
"value": "en",
"displayName": "English"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316134926/1136x640/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/1136x640/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/1136x640/cut.jpeg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316134926/1024x576/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/1024x576/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/1024x576/cut.jpeg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316134926/960x540/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/960x540/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/960x540/cut.jpeg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316134926/768x432/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/768x432/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/768x432/cut.jpeg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316134926/640x360/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/640x360/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/640x360/cut.jpeg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316134926/568x320/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/1136x640/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/568x320/cut.jpeg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316134926/372x210/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/372x210/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/372x210/cut.jpeg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316134926/320x180/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/640x360/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/960x540/cut.jpeg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316134926/248x140/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/248x140/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/248x140/cut.jpeg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316134926/124x70/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/248x140/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/372x210/cut.jpeg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/908b987c-df59-4f89-a8a7-72742bd74c2b.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/2e122ff1-39b5-413c-98b8-1abce4ad6202.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/a672d40a-211a-4fe5-9d08-ec474ceb02c7.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/a7cf8598-3112-4697-8935-cc098326ed7c.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterWiredWeb.m3u8"
}
]
}
},
{
"title": "Period End",
"description": "End of 1st Period",
"type": "PERIOD_END",
"timeAbsolute": "2020-03-12T00:44:00+0000",
"timeOffset": "2608",
"period": "1",
"statsEventId": "208",
"teamId": "",
"playerId": "",
"periodTime": "20:00",
"ordinalNum": "1st",
"highlight": {}
},
{
"title": "Period Start",
"description": "Period Start",
"type": "PERIOD_START",
"timeAbsolute": "2020-03-12T01:02:24+0000",
"timeOffset": "3712",
"period": "2",
"statsEventId": "213",
"teamId": "",
"playerId": "",
"periodTime": "00:00",
"ordinalNum": "2nd",
"highlight": {}
},
{
"title": "Goal",
"description": "Duncan Keith (3) Wrist Shot, assists: Jonathan Toews (41), Alex DeBrincat (25)",
"type": "GOAL",
"timeAbsolute": "2020-03-12T01:08:39+0000",
"timeOffset": "4087",
"period": "2",
"statsEventId": "227",
"teamId": "16",
"playerId": "8470281",
"periodTime": "04:33",
"ordinalNum": "2nd",
"highlight": {
"type": "video",
"id": "5355964",
"date": "2020-03-11T20:00:00-0400",
"title": "Keith nets PPG through traffic",
"blurb": "SJS@CHI: Keith rips shot through screen for PPG",
"description": "Duncan Keith receives a pass, walks across the blue line and fires a wrist shot through a screen and past Aaron Dell for a power-play goal",
"duration": "00:47",
"authFlow": false,
"mediaPlaybackId": "5355964",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "content",
"value": "highlight",
"displayName": "highlight"
},
{
"type": "content",
"value": "realTimeHighlight",
"displayName": "Real-Time Highlight"
},
{
"type": "statsEventId",
"value": "227",
"displayName": "227"
},
{
"type": "language",
"value": "en",
"displayName": "English"
},
{
"type": "teamId",
"value": "16",
"displayName": "16"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316136042/1136x640/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/1136x640/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/1136x640/cut.jpeg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316136042/1024x576/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/1024x576/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/1024x576/cut.jpeg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316136042/960x540/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/960x540/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/960x540/cut.jpeg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316136042/768x432/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/768x432/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/768x432/cut.jpeg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316136042/640x360/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/640x360/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/640x360/cut.jpeg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316136042/568x320/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/1136x640/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/568x320/cut.jpeg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316136042/372x210/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/372x210/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/372x210/cut.jpeg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316136042/320x180/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/640x360/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/960x540/cut.jpeg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316136042/248x140/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/248x140/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/248x140/cut.jpeg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316136042/124x70/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/248x140/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/372x210/cut.jpeg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/606db2d3-a9df-4e64-a054-6095f8fe561f.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/deb77b93-a5b9-4ea8-adec-330528201204.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/0a5594dd-2252-4df0-aca4-27455bcefcb1.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/3ce06651-4e0e-4953-b949-82d1cdb0cdb8.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterWiredWeb.m3u8"
}
]
}
},
{
"title": "Shot",
"description": "Dylan Strome Wrist Shot saved by Aaron Dell",
"type": "SHOT",
"timeAbsolute": "2020-03-12T01:16:06+0000",
"timeOffset": "4534",
"period": "2",
"statsEventId": "234",
"teamId": "16",
"playerId": "8478440",
"periodTime": "07:52",
"ordinalNum": "2nd",
"highlight": {}
},
{
"title": "Shot",
"description": "Dylan Strome Wrist Shot saved by Aaron Dell",
"type": "SHOT",
"timeAbsolute": "2020-03-12T01:26:20+0000",
"timeOffset": "5148",
"period": "2",
"statsEventId": "250",
"teamId": "16",
"playerId": "8478440",
"periodTime": "14:32",
"ordinalNum": "2nd",
"highlight": {}
},
{
"title": "Goal",
"description": "Patrick Kane (32) Tip-In, assists: Alex DeBrincat (26), Duncan Keith (24)",
"type": "GOAL",
"timeAbsolute": "2020-03-12T01:31:36+0000",
"timeOffset": "5464",
"period": "2",
"statsEventId": "458",
"teamId": "16",
"playerId": "8474141",
"periodTime": "16:33",
"ordinalNum": "2nd",
"highlight": {
"type": "video",
"id": "5356140",
"date": "2020-03-11T20:00:00-0400",
"title": "Kane, DeBrincat connect for PPG",
"blurb": "SJS@CHI: Kane taps DeBrincat's nice feed home for PPG",
"description": "Alex DeBrincat sends a pretty backdoor pass to Patrick Kane, who taps the puck past Aaron Dell for a power-play goal and a 2-1 lead in the 2nd",
"duration": "00:51",
"authFlow": false,
"mediaPlaybackId": "5356140",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "statsEventId",
"value": "458",
"displayName": "458"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "content",
"value": "highlight",
"displayName": "highlight"
},
{
"type": "content",
"value": "realTimeHighlight",
"displayName": "Real-Time Highlight"
},
{
"type": "language",
"value": "en",
"displayName": "English"
},
{
"type": "teamId",
"value": "16",
"displayName": "16"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316136260/1136x640/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/1136x640/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/1136x640/cut.jpeg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316136260/1024x576/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/1024x576/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/1024x576/cut.jpeg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316136260/960x540/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/960x540/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/960x540/cut.jpeg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316136260/768x432/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/768x432/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/768x432/cut.jpeg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316136260/640x360/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/640x360/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/640x360/cut.jpeg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316136260/568x320/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/1136x640/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/568x320/cut.jpeg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316136260/372x210/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/372x210/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/372x210/cut.jpeg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316136260/320x180/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/640x360/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/960x540/cut.jpeg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316136260/248x140/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/248x140/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/248x140/cut.jpeg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316136260/124x70/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/248x140/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/372x210/cut.jpeg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/a6b5b899-57ec-491f-ac7f-5270df77d7bd.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/d9f0768d-8893-4a0a-b3a4-0938b5190a87.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/e94caf54-9622-4a42-8924-384a5dc79f60.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/28f0831d-e5cd-4f78-9f8d-4a62f3d2f275.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterWiredWeb.m3u8"
}
]
}
},
{
"title": "Goal",
"description": "Brandon Saad (21) Wrist Shot, assists: Alex DeBrincat (27), Jonathan Toews (42)",
"type": "GOAL",
"timeAbsolute": "2020-03-12T01:34:08+0000",
"timeOffset": "5616",
"period": "2",
"statsEventId": "461",
"teamId": "16",
"playerId": "8476438",
"periodTime": "17:58",
"ordinalNum": "2nd",
"highlight": {
"type": "video",
"id": "5356154",
"date": "2020-03-11T20:00:00-0400",
"title": "Saad goes five-hole in front",
"blurb": "SJS@CHI: Saad slips DeBrincat's pass past Dell",
"description": "Brandon Saad receives a pass from Alex DeBrincat, dekes to his forehand and slips a shot through Aaron Dell's five-hole for a 3-1 lead",
"duration": "00:44",
"authFlow": false,
"mediaPlaybackId": "5356154",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "statsEventId",
"value": "461",
"displayName": "461"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "content",
"value": "highlight",
"displayName": "highlight"
},
{
"type": "content",
"value": "realTimeHighlight",
"displayName": "Real-Time Highlight"
},
{
"type": "language",
"value": "en",
"displayName": "English"
},
{
"type": "teamId",
"value": "16",
"displayName": "16"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316136044/1136x640/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/1136x640/cut.jpg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316136044/1024x576/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/1024x576/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/1024x576/cut.jpg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316136044/960x540/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/960x540/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/960x540/cut.jpg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316136044/768x432/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/768x432/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/768x432/cut.jpg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316136044/640x360/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/640x360/cut.jpg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316136044/568x320/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/568x320/cut.jpg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316136044/372x210/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/372x210/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/372x210/cut.jpg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316136044/320x180/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/960x540/cut.jpg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316136044/124x70/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/372x210/cut.jpg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/cd4b6236-552d-4472-a38d-4cea5dd91772.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/f583981b-7ffe-45c5-9d01-6e69ef9711ab.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/77dbcc48-e5ca-4a35-83fe-64fd85a13b8c.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/c74beed0-d9ca-480b-a9ec-6158ba091d9b.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterWiredWeb.m3u8"
}
]
}
},
{
"title": "Period End",
"description": "End of 2nd Period",
"type": "PERIOD_END",
"timeAbsolute": "2020-03-12T01:38:57+0000",
"timeOffset": "5905",
"period": "2",
"statsEventId": "470",
"teamId": "",
"playerId": "",
"periodTime": "20:00",
"ordinalNum": "2nd",
"highlight": {}
},
{
"title": "Period Start",
"description": "Period Start",
"type": "PERIOD_START",
"timeAbsolute": "2020-03-12T01:57:51+0000",
"timeOffset": "7039",
"period": "3",
"statsEventId": "475",
"teamId": "",
"playerId": "",
"periodTime": "00:00",
"ordinalNum": "3rd",
"highlight": {}
},
{
"title": "Goal",
"description": "Alex Nylander (10) Slap Shot, assists: Dylan Strome (26)",
"type": "GOAL",
"timeAbsolute": "2020-03-12T01:59:47+0000",
"timeOffset": "7155",
"period": "3",
"statsEventId": "483",
"teamId": "16",
"playerId": "8479423",
"periodTime": "01:31",
"ordinalNum": "3rd",
"highlight": {
"type": "video",
"id": "5356393",
"date": "2020-03-11T20:00:00-0400",
"title": "Nylander's quick one-timer",
"blurb": "SJS@CHI: Nylander hammers Strome's feed past Dell",
"description": "Dylan Strome sends a pass to Alex Nylander, who quickly blasts a one-timer past Aaron Dell, extending the Blackhawks' lead to 4-1 in the 3rd",
"duration": "00:40",
"authFlow": false,
"mediaPlaybackId": "5356393",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "statsEventId",
"value": "483",
"displayName": "483"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "content",
"value": "highlight",
"displayName": "highlight"
},
{
"type": "content",
"value": "realTimeHighlight",
"displayName": "Real-Time Highlight"
},
{
"type": "language",
"value": "en",
"displayName": "English"
},
{
"type": "teamId",
"value": "16",
"displayName": "16"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316135616/1136x640/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/1136x640/cut.jpg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316135616/1024x576/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/1024x576/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/1024x576/cut.jpg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316135616/960x540/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/960x540/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/960x540/cut.jpg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316135616/768x432/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/768x432/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/768x432/cut.jpg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316135616/640x360/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/640x360/cut.jpg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316135616/568x320/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/568x320/cut.jpg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316135616/372x210/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/372x210/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/372x210/cut.jpg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316135616/320x180/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/960x540/cut.jpg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316135616/248x140/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/248x140/cut.jpg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316135616/124x70/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/372x210/cut.jpg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/c22ab9eb-292e-4923-a709-0f6bb596b36a.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/d081a99c-45f6-40c2-a8df-1b4daabcfa06.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/4dedd87d-b6f5-4944-981c-18dd9d1d3943.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/12d370f5-4fa0-4d7b-ad70-865db594f823.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterWiredWeb.m3u8"
}
]
}
},
{
"title": "Goal",
"description": "Timo Meier (22) Wrist Shot, assists: Evander Kane (21)",
"type": "GOAL",
"timeAbsolute": "2020-03-12T02:09:09+0000",
"timeOffset": "7717",
"period": "3",
"statsEventId": "495",
"teamId": "28",
"playerId": "8478414",
"periodTime": "06:39",
"ordinalNum": "3rd",
"highlight": {
"type": "video",
"id": "5356441",
"date": "2020-03-11T20:00:00-0400",
"title": "Meier scores off the draw",
"blurb": "SJS@CHI: Meier roofs shot past Crawford off the draw",
"description": "Timo Meier picks up the puck in the face-off circle and lifts a shot over Corey Crawford's glove, cutting the Sharks' deficit to 4-2 in the 3rd",
"duration": "00:29",
"authFlow": false,
"mediaPlaybackId": "5356441",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "teamId",
"value": "28",
"displayName": "28"
},
{
"type": "content",
"value": "highlight",
"displayName": "highlight"
},
{
"type": "statsEventId",
"value": "495",
"displayName": "495"
},
{
"type": "content",
"value": "realTimeHighlight",
"displayName": "Real-Time Highlight"
},
{
"type": "language",
"value": "en",
"displayName": "English"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316136932/1136x640/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/1136x640/cut.jpg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316136932/1024x576/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/1024x576/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/1024x576/cut.jpg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316136932/960x540/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/960x540/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/960x540/cut.jpg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316136932/768x432/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/768x432/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/768x432/cut.jpg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316136932/640x360/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/640x360/cut.jpg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316136932/568x320/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/568x320/cut.jpg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316136932/372x210/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/372x210/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/372x210/cut.jpg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316136932/320x180/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/960x540/cut.jpg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316136932/248x140/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/248x140/cut.jpg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316136932/124x70/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/372x210/cut.jpg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/17253577-c40f-47bd-a823-b45753da0429.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/554b2086-f42d-4c14-8948-f2838bc8ff54.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/162d00e0-032b-4874-8fc2-f656d1a54b96.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/f3331c47-7b41-4ac1-9942-0ebbae91087f.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterWiredWeb.m3u8"
}
]
}
},
{
"title": "Missed Shot",
"description": "Brandon Saad Goalpost",
"type": "MISSED_SHOT",
"timeAbsolute": "2020-03-12T02:14:11+0000",
"timeOffset": "8019",
"period": "3",
"statsEventId": "655",
"teamId": "16",
"playerId": "8476438",
"periodTime": "10:38",
"ordinalNum": "3rd",
"highlight": {}
},
{
"title": "Goal",
"description": "Patrick Kane (33) Wrist Shot, assists: Slater Koekkoek (9), Alex Nylander (16)",
"type": "GOAL",
"timeAbsolute": "2020-03-12T02:25:09+0000",
"timeOffset": "8677",
"period": "3",
"statsEventId": "665",
"teamId": "16",
"playerId": "8474141",
"periodTime": "16:19",
"ordinalNum": "3rd",
"highlight": {
"type": "video",
"id": "5356647",
"date": "2020-03-11T20:00:00-0400",
"title": "Kane's second goal of the game",
"blurb": "SJS@CHI: Kane nets own rebound for second goal",
"description": "Patrick Kane is denied by Aaron Dell, but he finds his own rebound in the crease and taps it into the back of the net for a 5-2 lead in the 3rd",
"duration": "00:49",
"authFlow": false,
"mediaPlaybackId": "5356647",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "statsEventId",
"value": "665",
"displayName": "665"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "content",
"value": "highlight",
"displayName": "highlight"
},
{
"type": "content",
"value": "realTimeHighlight",
"displayName": "Real-Time Highlight"
},
{
"type": "language",
"value": "en",
"displayName": "English"
},
{
"type": "teamId",
"value": "16",
"displayName": "16"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316138472/1136x640/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/1136x640/cut.jpg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316138472/1024x576/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/1024x576/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/1024x576/cut.jpg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316138472/960x540/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/960x540/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/960x540/cut.jpg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316138472/768x432/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/768x432/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/768x432/cut.jpg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316138472/640x360/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/640x360/cut.jpg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316138472/568x320/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/568x320/cut.jpg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316138472/372x210/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/372x210/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/372x210/cut.jpg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316138472/320x180/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/960x540/cut.jpg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316138472/248x140/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/248x140/cut.jpg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316138472/124x70/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/372x210/cut.jpg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/e608ed07-ab4d-48c8-90ea-4ff3a79ecf0d.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/5c5a46ab-170a-49f7-9bc3-431ac4445ed7.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/21c762a5-07eb-4644-a35d-e0d6cd2e4a70.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/7ae919a8-ddfa-42d0-9947-fbb56d1500d4.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterWiredWeb.m3u8"
}
]
}
},
{
"title": "Goal",
"description": "Dominik Kubalik (30) Slap Shot, assists: Kirby Dach (15)",
"type": "GOAL",
"timeAbsolute": "2020-03-12T02:28:01+0000",
"timeOffset": "8849",
"period": "3",
"statsEventId": "669",
"teamId": "16",
"playerId": "8477330",
"periodTime": "18:03",
"ordinalNum": "3rd",
"highlight": {
"type": "video",
"id": "5356785",
"date": "2020-03-11T20:00:00-0400",
"title": "Kubalik's blistering one-timer",
"blurb": "SJS@CHI: Kubalik goes top shelf off Dach's slick feed",
"description": "Kirby Dach drops a pass to Dominik Kubalik, who hammers a one-timer top shelf over Aaron Dell's glove for a 6-2 lead in the 3rd period",
"duration": "00:47",
"authFlow": false,
"mediaPlaybackId": "5356785",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "content",
"value": "highlight",
"displayName": "highlight"
},
{
"type": "content",
"value": "realTimeHighlight",
"displayName": "Real-Time Highlight"
},
{
"type": "statsEventId",
"value": "669",
"displayName": "669"
},
{
"type": "language",
"value": "en",
"displayName": "English"
},
{
"type": "teamId",
"value": "16",
"displayName": "16"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316138532/1136x640/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/1136x640/cut.jpg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316138532/1024x576/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/1024x576/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/1024x576/cut.jpg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316138532/960x540/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/960x540/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/960x540/cut.jpg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316138532/768x432/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/768x432/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/768x432/cut.jpg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316138532/640x360/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/640x360/cut.jpg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316138532/568x320/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/568x320/cut.jpg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316138532/372x210/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/372x210/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/372x210/cut.jpg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316138532/320x180/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/960x540/cut.jpg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316138532/248x140/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/248x140/cut.jpg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316138532/124x70/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/372x210/cut.jpg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/cb1417c3-bd68-4647-ae78-e182698c5faf.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/05d66888-d551-4479-a935-a9e5fce9a61d.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/44539768-0eb8-4e75-a2c8-cf1d0e9ade4c.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/559be6f4-69bc-4393-8265-386a94c44187.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterWiredWeb.m3u8"
}
]
}
},
{
"title": "Period End",
"description": "End of 3rd Period",
"type": "PERIOD_END",
"timeAbsolute": "2020-03-12T02:30:59+0000",
"timeOffset": "9027",
"period": "3",
"statsEventId": "674",
"teamId": "",
"playerId": "",
"periodTime": "20:00",
"ordinalNum": "3rd",
"highlight": {}
},
{
"title": "Broadcast End",
"description": "Broadcast End",
"type": "BROADCAST_END",
"timeAbsolute": "2020-03-12T02:32:01+0000",
"timeOffset": "9089",
"period": "",
"statsEventId": "",
"teamId": "",
"playerId": "",
"periodTime": "",
"ordinalNum": "",
"highlight": {}
}
]
}
},
"highlights": {
"scoreboard": {
"title": "Highlights",
"topicList": "313536042",
"items": [
{
"type": "video",
"id": "5356154",
"date": "2020-03-11T20:00:00-0400",
"title": "Saad goes five-hole in front",
"blurb": "SJS@CHI: Saad slips DeBrincat's pass past Dell",
"description": "Brandon Saad receives a pass from Alex DeBrincat, dekes to his forehand and slips a shot through Aaron Dell's five-hole for a 3-1 lead",
"duration": "00:44",
"authFlow": false,
"mediaPlaybackId": "5356154",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "statsEventId",
"value": "461",
"displayName": "461"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "content",
"value": "highlight",
"displayName": "highlight"
},
{
"type": "content",
"value": "realTimeHighlight",
"displayName": "Real-Time Highlight"
},
{
"type": "language",
"value": "en",
"displayName": "English"
},
{
"type": "teamId",
"value": "16",
"displayName": "16"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316136044/1136x640/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/1136x640/cut.jpg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316136044/1024x576/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/1024x576/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/1024x576/cut.jpg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316136044/960x540/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/960x540/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/960x540/cut.jpg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316136044/768x432/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/768x432/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/768x432/cut.jpg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316136044/640x360/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/640x360/cut.jpg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316136044/568x320/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/568x320/cut.jpg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316136044/372x210/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/372x210/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/372x210/cut.jpg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316136044/320x180/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/960x540/cut.jpg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316136044/124x70/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/372x210/cut.jpg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/cd4b6236-552d-4472-a38d-4cea5dd91772.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/f583981b-7ffe-45c5-9d01-6e69ef9711ab.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/77dbcc48-e5ca-4a35-83fe-64fd85a13b8c.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/c74beed0-d9ca-480b-a9ec-6158ba091d9b.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterWiredWeb.m3u8"
}
]
},
{
"type": "video",
"id": "5356393",
"date": "2020-03-11T20:00:00-0400",
"title": "Nylander's quick one-timer",
"blurb": "SJS@CHI: Nylander hammers Strome's feed past Dell",
"description": "Dylan Strome sends a pass to Alex Nylander, who quickly blasts a one-timer past Aaron Dell, extending the Blackhawks' lead to 4-1 in the 3rd",
"duration": "00:40",
"authFlow": false,
"mediaPlaybackId": "5356393",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "statsEventId",
"value": "483",
"displayName": "483"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "content",
"value": "highlight",
"displayName": "highlight"
},
{
"type": "content",
"value": "realTimeHighlight",
"displayName": "Real-Time Highlight"
},
{
"type": "language",
"value": "en",
"displayName": "English"
},
{
"type": "teamId",
"value": "16",
"displayName": "16"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316135616/1136x640/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/1136x640/cut.jpg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316135616/1024x576/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/1024x576/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/1024x576/cut.jpg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316135616/960x540/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/960x540/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/960x540/cut.jpg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316135616/768x432/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/768x432/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/768x432/cut.jpg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316135616/640x360/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/640x360/cut.jpg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316135616/568x320/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/568x320/cut.jpg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316135616/372x210/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/372x210/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/372x210/cut.jpg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316135616/320x180/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/960x540/cut.jpg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316135616/248x140/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/248x140/cut.jpg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316135616/124x70/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/372x210/cut.jpg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/c22ab9eb-292e-4923-a709-0f6bb596b36a.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/d081a99c-45f6-40c2-a8df-1b4daabcfa06.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/4dedd87d-b6f5-4944-981c-18dd9d1d3943.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/12d370f5-4fa0-4d7b-ad70-865db594f823.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterWiredWeb.m3u8"
}
]
},
{
"type": "video",
"id": "5355504",
"date": "2020-03-11T20:00:00-0400",
"title": "Kane opens scoring with PPG",
"blurb": "SJS@CHI: Kane nets redirection from slot for PPG",
"description": "Joe Thornton sends a pass to Evander Kane, who deflects the puck past Corey Crawford on the power play to give the Sharks a 1-0 lead in the 1st",
"duration": "00:48",
"authFlow": false,
"mediaPlaybackId": "5355504",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "statsEventId",
"value": "43",
"displayName": "43"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "teamId",
"value": "28",
"displayName": "28"
},
{
"type": "content",
"value": "highlight",
"displayName": "highlight"
},
{
"type": "content",
"value": "realTimeHighlight",
"displayName": "Real-Time Highlight"
},
{
"type": "language",
"value": "en",
"displayName": "English"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316134926/1136x640/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/1136x640/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/1136x640/cut.jpeg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316134926/1024x576/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/1024x576/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/1024x576/cut.jpeg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316134926/960x540/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/960x540/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/960x540/cut.jpeg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316134926/768x432/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/768x432/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/768x432/cut.jpeg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316134926/640x360/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/640x360/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/640x360/cut.jpeg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316134926/568x320/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/1136x640/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/568x320/cut.jpeg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316134926/372x210/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/372x210/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/372x210/cut.jpeg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316134926/320x180/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/640x360/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/960x540/cut.jpeg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316134926/248x140/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/248x140/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/248x140/cut.jpeg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316134926/124x70/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/248x140/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/372x210/cut.jpeg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/908b987c-df59-4f89-a8a7-72742bd74c2b.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/2e122ff1-39b5-413c-98b8-1abce4ad6202.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/a672d40a-211a-4fe5-9d08-ec474ceb02c7.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/a7cf8598-3112-4697-8935-cc098326ed7c.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterWiredWeb.m3u8"
}
]
},
{
"type": "video",
"id": "5356140",
"date": "2020-03-11T20:00:00-0400",
"title": "Kane, DeBrincat connect for PPG",
"blurb": "SJS@CHI: Kane taps DeBrincat's nice feed home for PPG",
"description": "Alex DeBrincat sends a pretty backdoor pass to Patrick Kane, who taps the puck past Aaron Dell for a power-play goal and a 2-1 lead in the 2nd",
"duration": "00:51",
"authFlow": false,
"mediaPlaybackId": "5356140",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "statsEventId",
"value": "458",
"displayName": "458"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "content",
"value": "highlight",
"displayName": "highlight"
},
{
"type": "content",
"value": "realTimeHighlight",
"displayName": "Real-Time Highlight"
},
{
"type": "language",
"value": "en",
"displayName": "English"
},
{
"type": "teamId",
"value": "16",
"displayName": "16"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316136260/1136x640/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/1136x640/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/1136x640/cut.jpeg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316136260/1024x576/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/1024x576/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/1024x576/cut.jpeg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316136260/960x540/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/960x540/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/960x540/cut.jpeg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316136260/768x432/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/768x432/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/768x432/cut.jpeg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316136260/640x360/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/640x360/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/640x360/cut.jpeg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316136260/568x320/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/1136x640/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/568x320/cut.jpeg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316136260/372x210/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/372x210/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/372x210/cut.jpeg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316136260/320x180/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/640x360/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/960x540/cut.jpeg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316136260/248x140/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/248x140/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/248x140/cut.jpeg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316136260/124x70/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/248x140/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/372x210/cut.jpeg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/a6b5b899-57ec-491f-ac7f-5270df77d7bd.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/d9f0768d-8893-4a0a-b3a4-0938b5190a87.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/e94caf54-9622-4a42-8924-384a5dc79f60.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/28f0831d-e5cd-4f78-9f8d-4a62f3d2f275.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterWiredWeb.m3u8"
}
]
},
{
"type": "video",
"id": "5356647",
"date": "2020-03-11T20:00:00-0400",
"title": "Kane's second goal of the game",
"blurb": "SJS@CHI: Kane nets own rebound for second goal",
"description": "Patrick Kane is denied by Aaron Dell, but he finds his own rebound in the crease and taps it into the back of the net for a 5-2 lead in the 3rd",
"duration": "00:49",
"authFlow": false,
"mediaPlaybackId": "5356647",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "statsEventId",
"value": "665",
"displayName": "665"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "content",
"value": "highlight",
"displayName": "highlight"
},
{
"type": "content",
"value": "realTimeHighlight",
"displayName": "Real-Time Highlight"
},
{
"type": "language",
"value": "en",
"displayName": "English"
},
{
"type": "teamId",
"value": "16",
"displayName": "16"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316138472/1136x640/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/1136x640/cut.jpg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316138472/1024x576/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/1024x576/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/1024x576/cut.jpg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316138472/960x540/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/960x540/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/960x540/cut.jpg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316138472/768x432/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/768x432/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/768x432/cut.jpg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316138472/640x360/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/640x360/cut.jpg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316138472/568x320/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/568x320/cut.jpg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316138472/372x210/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/372x210/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/372x210/cut.jpg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316138472/320x180/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/960x540/cut.jpg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316138472/248x140/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/248x140/cut.jpg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316138472/124x70/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/372x210/cut.jpg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/e608ed07-ab4d-48c8-90ea-4ff3a79ecf0d.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/5c5a46ab-170a-49f7-9bc3-431ac4445ed7.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/21c762a5-07eb-4644-a35d-e0d6cd2e4a70.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/7ae919a8-ddfa-42d0-9947-fbb56d1500d4.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterWiredWeb.m3u8"
}
]
},
{
"type": "video",
"id": "5355964",
"date": "2020-03-11T20:00:00-0400",
"title": "Keith nets PPG through traffic",
"blurb": "SJS@CHI: Keith rips shot through screen for PPG",
"description": "Duncan Keith receives a pass, walks across the blue line and fires a wrist shot through a screen and past Aaron Dell for a power-play goal",
"duration": "00:47",
"authFlow": false,
"mediaPlaybackId": "5355964",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "content",
"value": "highlight",
"displayName": "highlight"
},
{
"type": "content",
"value": "realTimeHighlight",
"displayName": "Real-Time Highlight"
},
{
"type": "statsEventId",
"value": "227",
"displayName": "227"
},
{
"type": "language",
"value": "en",
"displayName": "English"
},
{
"type": "teamId",
"value": "16",
"displayName": "16"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316136042/1136x640/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/1136x640/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/1136x640/cut.jpeg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316136042/1024x576/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/1024x576/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/1024x576/cut.jpeg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316136042/960x540/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/960x540/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/960x540/cut.jpeg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316136042/768x432/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/768x432/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/768x432/cut.jpeg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316136042/640x360/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/640x360/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/640x360/cut.jpeg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316136042/568x320/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/1136x640/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/568x320/cut.jpeg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316136042/372x210/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/372x210/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/372x210/cut.jpeg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316136042/320x180/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/640x360/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/960x540/cut.jpeg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316136042/248x140/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/248x140/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/248x140/cut.jpeg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316136042/124x70/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/248x140/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/372x210/cut.jpeg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/606db2d3-a9df-4e64-a054-6095f8fe561f.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/deb77b93-a5b9-4ea8-adec-330528201204.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/0a5594dd-2252-4df0-aca4-27455bcefcb1.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/3ce06651-4e0e-4953-b949-82d1cdb0cdb8.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterWiredWeb.m3u8"
}
]
},
{
"type": "video",
"id": "5356441",
"date": "2020-03-11T20:00:00-0400",
"title": "Meier scores off the draw",
"blurb": "SJS@CHI: Meier roofs shot past Crawford off the draw",
"description": "Timo Meier picks up the puck in the face-off circle and lifts a shot over Corey Crawford's glove, cutting the Sharks' deficit to 4-2 in the 3rd",
"duration": "00:29",
"authFlow": false,
"mediaPlaybackId": "5356441",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "teamId",
"value": "28",
"displayName": "28"
},
{
"type": "content",
"value": "highlight",
"displayName": "highlight"
},
{
"type": "statsEventId",
"value": "495",
"displayName": "495"
},
{
"type": "content",
"value": "realTimeHighlight",
"displayName": "Real-Time Highlight"
},
{
"type": "language",
"value": "en",
"displayName": "English"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316136932/1136x640/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/1136x640/cut.jpg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316136932/1024x576/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/1024x576/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/1024x576/cut.jpg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316136932/960x540/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/960x540/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/960x540/cut.jpg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316136932/768x432/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/768x432/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/768x432/cut.jpg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316136932/640x360/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/640x360/cut.jpg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316136932/568x320/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/568x320/cut.jpg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316136932/372x210/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/372x210/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/372x210/cut.jpg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316136932/320x180/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/960x540/cut.jpg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316136932/248x140/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/248x140/cut.jpg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316136932/124x70/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/372x210/cut.jpg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/17253577-c40f-47bd-a823-b45753da0429.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/554b2086-f42d-4c14-8948-f2838bc8ff54.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/162d00e0-032b-4874-8fc2-f656d1a54b96.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/f3331c47-7b41-4ac1-9942-0ebbae91087f.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterWiredWeb.m3u8"
}
]
},
{
"type": "video",
"id": "5356785",
"date": "2020-03-11T20:00:00-0400",
"title": "Kubalik's blistering one-timer",
"blurb": "SJS@CHI: Kubalik goes top shelf off Dach's slick feed",
"description": "Kirby Dach drops a pass to Dominik Kubalik, who hammers a one-timer top shelf over Aaron Dell's glove for a 6-2 lead in the 3rd period",
"duration": "00:47",
"authFlow": false,
"mediaPlaybackId": "5356785",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "content",
"value": "highlight",
"displayName": "highlight"
},
{
"type": "content",
"value": "realTimeHighlight",
"displayName": "Real-Time Highlight"
},
{
"type": "statsEventId",
"value": "669",
"displayName": "669"
},
{
"type": "language",
"value": "en",
"displayName": "English"
},
{
"type": "teamId",
"value": "16",
"displayName": "16"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316138532/1136x640/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/1136x640/cut.jpg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316138532/1024x576/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/1024x576/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/1024x576/cut.jpg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316138532/960x540/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/960x540/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/960x540/cut.jpg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316138532/768x432/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/768x432/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/768x432/cut.jpg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316138532/640x360/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/640x360/cut.jpg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316138532/568x320/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/568x320/cut.jpg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316138532/372x210/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/372x210/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/372x210/cut.jpg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316138532/320x180/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/960x540/cut.jpg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316138532/248x140/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/248x140/cut.jpg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316138532/124x70/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/372x210/cut.jpg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/cb1417c3-bd68-4647-ae78-e182698c5faf.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/05d66888-d551-4479-a935-a9e5fce9a61d.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/44539768-0eb8-4e75-a2c8-cf1d0e9ade4c.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/559be6f4-69bc-4393-8265-386a94c44187.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterWiredWeb.m3u8"
}
]
}
]
},
"gameCenter": {
"title": "Highlights",
"topicList": "313536042",
"items": [
{
"type": "video",
"id": "5356154",
"date": "2020-03-11T20:00:00-0400",
"title": "Saad goes five-hole in front",
"blurb": "SJS@CHI: Saad slips DeBrincat's pass past Dell",
"description": "Brandon Saad receives a pass from Alex DeBrincat, dekes to his forehand and slips a shot through Aaron Dell's five-hole for a 3-1 lead",
"duration": "00:44",
"authFlow": false,
"mediaPlaybackId": "5356154",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "statsEventId",
"value": "461",
"displayName": "461"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "content",
"value": "highlight",
"displayName": "highlight"
},
{
"type": "content",
"value": "realTimeHighlight",
"displayName": "Real-Time Highlight"
},
{
"type": "language",
"value": "en",
"displayName": "English"
},
{
"type": "teamId",
"value": "16",
"displayName": "16"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316136044/1136x640/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/1136x640/cut.jpg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316136044/1024x576/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/1024x576/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/1024x576/cut.jpg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316136044/960x540/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/960x540/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/960x540/cut.jpg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316136044/768x432/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/768x432/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/768x432/cut.jpg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316136044/640x360/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/640x360/cut.jpg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316136044/568x320/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/568x320/cut.jpg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316136044/372x210/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/372x210/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/372x210/cut.jpg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316136044/320x180/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/960x540/cut.jpg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316136044/124x70/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136044/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136044/372x210/cut.jpg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/cd4b6236-552d-4472-a38d-4cea5dd91772.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/f583981b-7ffe-45c5-9d01-6e69ef9711ab.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/77dbcc48-e5ca-4a35-83fe-64fd85a13b8c.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/c74beed0-d9ca-480b-a9ec-6158ba091d9b.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286155/MasterWiredWeb.m3u8"
}
]
},
{
"type": "video",
"id": "5356393",
"date": "2020-03-11T20:00:00-0400",
"title": "Nylander's quick one-timer",
"blurb": "SJS@CHI: Nylander hammers Strome's feed past Dell",
"description": "Dylan Strome sends a pass to Alex Nylander, who quickly blasts a one-timer past Aaron Dell, extending the Blackhawks' lead to 4-1 in the 3rd",
"duration": "00:40",
"authFlow": false,
"mediaPlaybackId": "5356393",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "statsEventId",
"value": "483",
"displayName": "483"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "content",
"value": "highlight",
"displayName": "highlight"
},
{
"type": "content",
"value": "realTimeHighlight",
"displayName": "Real-Time Highlight"
},
{
"type": "language",
"value": "en",
"displayName": "English"
},
{
"type": "teamId",
"value": "16",
"displayName": "16"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316135616/1136x640/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/1136x640/cut.jpg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316135616/1024x576/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/1024x576/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/1024x576/cut.jpg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316135616/960x540/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/960x540/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/960x540/cut.jpg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316135616/768x432/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/768x432/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/768x432/cut.jpg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316135616/640x360/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/640x360/cut.jpg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316135616/568x320/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/568x320/cut.jpg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316135616/372x210/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/372x210/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/372x210/cut.jpg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316135616/320x180/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/960x540/cut.jpg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316135616/248x140/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/248x140/cut.jpg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316135616/124x70/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316135616/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316135616/372x210/cut.jpg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/c22ab9eb-292e-4923-a709-0f6bb596b36a.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/d081a99c-45f6-40c2-a8df-1b4daabcfa06.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/4dedd87d-b6f5-4944-981c-18dd9d1d3943.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/12d370f5-4fa0-4d7b-ad70-865db594f823.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286394/MasterWiredWeb.m3u8"
}
]
},
{
"type": "video",
"id": "5355504",
"date": "2020-03-11T20:00:00-0400",
"title": "Kane opens scoring with PPG",
"blurb": "SJS@CHI: Kane nets redirection from slot for PPG",
"description": "Joe Thornton sends a pass to Evander Kane, who deflects the puck past Corey Crawford on the power play to give the Sharks a 1-0 lead in the 1st",
"duration": "00:48",
"authFlow": false,
"mediaPlaybackId": "5355504",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "statsEventId",
"value": "43",
"displayName": "43"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "teamId",
"value": "28",
"displayName": "28"
},
{
"type": "content",
"value": "highlight",
"displayName": "highlight"
},
{
"type": "content",
"value": "realTimeHighlight",
"displayName": "Real-Time Highlight"
},
{
"type": "language",
"value": "en",
"displayName": "English"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316134926/1136x640/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/1136x640/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/1136x640/cut.jpeg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316134926/1024x576/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/1024x576/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/1024x576/cut.jpeg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316134926/960x540/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/960x540/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/960x540/cut.jpeg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316134926/768x432/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/768x432/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/768x432/cut.jpeg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316134926/640x360/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/640x360/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/640x360/cut.jpeg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316134926/568x320/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/1136x640/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/568x320/cut.jpeg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316134926/372x210/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/372x210/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/372x210/cut.jpeg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316134926/320x180/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/640x360/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/960x540/cut.jpeg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316134926/248x140/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/248x140/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/248x140/cut.jpeg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316134926/124x70/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316134926/248x140/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316134926/372x210/cut.jpeg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/908b987c-df59-4f89-a8a7-72742bd74c2b.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/2e122ff1-39b5-413c-98b8-1abce4ad6202.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/a672d40a-211a-4fe5-9d08-ec474ceb02c7.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/a7cf8598-3112-4697-8935-cc098326ed7c.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285506/MasterWiredWeb.m3u8"
}
]
},
{
"type": "video",
"id": "5356140",
"date": "2020-03-11T20:00:00-0400",
"title": "Kane, DeBrincat connect for PPG",
"blurb": "SJS@CHI: Kane taps DeBrincat's nice feed home for PPG",
"description": "Alex DeBrincat sends a pretty backdoor pass to Patrick Kane, who taps the puck past Aaron Dell for a power-play goal and a 2-1 lead in the 2nd",
"duration": "00:51",
"authFlow": false,
"mediaPlaybackId": "5356140",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "statsEventId",
"value": "458",
"displayName": "458"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "content",
"value": "highlight",
"displayName": "highlight"
},
{
"type": "content",
"value": "realTimeHighlight",
"displayName": "Real-Time Highlight"
},
{
"type": "language",
"value": "en",
"displayName": "English"
},
{
"type": "teamId",
"value": "16",
"displayName": "16"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316136260/1136x640/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/1136x640/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/1136x640/cut.jpeg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316136260/1024x576/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/1024x576/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/1024x576/cut.jpeg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316136260/960x540/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/960x540/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/960x540/cut.jpeg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316136260/768x432/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/768x432/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/768x432/cut.jpeg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316136260/640x360/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/640x360/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/640x360/cut.jpeg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316136260/568x320/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/1136x640/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/568x320/cut.jpeg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316136260/372x210/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/372x210/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/372x210/cut.jpeg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316136260/320x180/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/640x360/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/960x540/cut.jpeg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316136260/248x140/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/248x140/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/248x140/cut.jpeg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316136260/124x70/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136260/248x140/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136260/372x210/cut.jpeg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/a6b5b899-57ec-491f-ac7f-5270df77d7bd.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/d9f0768d-8893-4a0a-b3a4-0938b5190a87.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/e94caf54-9622-4a42-8924-384a5dc79f60.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/28f0831d-e5cd-4f78-9f8d-4a62f3d2f275.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286141/MasterWiredWeb.m3u8"
}
]
},
{
"type": "video",
"id": "5356647",
"date": "2020-03-11T20:00:00-0400",
"title": "Kane's second goal of the game",
"blurb": "SJS@CHI: Kane nets own rebound for second goal",
"description": "Patrick Kane is denied by Aaron Dell, but he finds his own rebound in the crease and taps it into the back of the net for a 5-2 lead in the 3rd",
"duration": "00:49",
"authFlow": false,
"mediaPlaybackId": "5356647",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "statsEventId",
"value": "665",
"displayName": "665"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "content",
"value": "highlight",
"displayName": "highlight"
},
{
"type": "content",
"value": "realTimeHighlight",
"displayName": "Real-Time Highlight"
},
{
"type": "language",
"value": "en",
"displayName": "English"
},
{
"type": "teamId",
"value": "16",
"displayName": "16"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316138472/1136x640/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/1136x640/cut.jpg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316138472/1024x576/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/1024x576/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/1024x576/cut.jpg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316138472/960x540/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/960x540/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/960x540/cut.jpg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316138472/768x432/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/768x432/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/768x432/cut.jpg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316138472/640x360/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/640x360/cut.jpg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316138472/568x320/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/568x320/cut.jpg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316138472/372x210/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/372x210/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/372x210/cut.jpg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316138472/320x180/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/960x540/cut.jpg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316138472/248x140/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/248x140/cut.jpg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316138472/124x70/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138472/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138472/372x210/cut.jpg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/e608ed07-ab4d-48c8-90ea-4ff3a79ecf0d.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/5c5a46ab-170a-49f7-9bc3-431ac4445ed7.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/21c762a5-07eb-4644-a35d-e0d6cd2e4a70.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/7ae919a8-ddfa-42d0-9947-fbb56d1500d4.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286648/MasterWiredWeb.m3u8"
}
]
},
{
"type": "video",
"id": "5355964",
"date": "2020-03-11T20:00:00-0400",
"title": "Keith nets PPG through traffic",
"blurb": "SJS@CHI: Keith rips shot through screen for PPG",
"description": "Duncan Keith receives a pass, walks across the blue line and fires a wrist shot through a screen and past Aaron Dell for a power-play goal",
"duration": "00:47",
"authFlow": false,
"mediaPlaybackId": "5355964",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "content",
"value": "highlight",
"displayName": "highlight"
},
{
"type": "content",
"value": "realTimeHighlight",
"displayName": "Real-Time Highlight"
},
{
"type": "statsEventId",
"value": "227",
"displayName": "227"
},
{
"type": "language",
"value": "en",
"displayName": "English"
},
{
"type": "teamId",
"value": "16",
"displayName": "16"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316136042/1136x640/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/1136x640/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/1136x640/cut.jpeg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316136042/1024x576/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/1024x576/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/1024x576/cut.jpeg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316136042/960x540/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/960x540/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/960x540/cut.jpeg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316136042/768x432/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/768x432/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/768x432/cut.jpeg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316136042/640x360/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/640x360/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/640x360/cut.jpeg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316136042/568x320/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/1136x640/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/568x320/cut.jpeg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316136042/372x210/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/372x210/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/372x210/cut.jpeg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316136042/320x180/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/640x360/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/960x540/cut.jpeg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316136042/248x140/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/248x140/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/248x140/cut.jpeg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316136042/124x70/cut.jpeg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136042/248x140/cut.jpeg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136042/372x210/cut.jpeg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/606db2d3-a9df-4e64-a054-6095f8fe561f.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/deb77b93-a5b9-4ea8-adec-330528201204.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/0a5594dd-2252-4df0-aca4-27455bcefcb1.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/3ce06651-4e0e-4953-b949-82d1cdb0cdb8.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5285965/MasterWiredWeb.m3u8"
}
]
},
{
"type": "video",
"id": "5356441",
"date": "2020-03-11T20:00:00-0400",
"title": "Meier scores off the draw",
"blurb": "SJS@CHI: Meier roofs shot past Crawford off the draw",
"description": "Timo Meier picks up the puck in the face-off circle and lifts a shot over Corey Crawford's glove, cutting the Sharks' deficit to 4-2 in the 3rd",
"duration": "00:29",
"authFlow": false,
"mediaPlaybackId": "5356441",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "teamId",
"value": "28",
"displayName": "28"
},
{
"type": "content",
"value": "highlight",
"displayName": "highlight"
},
{
"type": "statsEventId",
"value": "495",
"displayName": "495"
},
{
"type": "content",
"value": "realTimeHighlight",
"displayName": "Real-Time Highlight"
},
{
"type": "language",
"value": "en",
"displayName": "English"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316136932/1136x640/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/1136x640/cut.jpg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316136932/1024x576/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/1024x576/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/1024x576/cut.jpg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316136932/960x540/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/960x540/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/960x540/cut.jpg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316136932/768x432/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/768x432/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/768x432/cut.jpg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316136932/640x360/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/640x360/cut.jpg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316136932/568x320/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/568x320/cut.jpg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316136932/372x210/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/372x210/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/372x210/cut.jpg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316136932/320x180/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/960x540/cut.jpg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316136932/248x140/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/248x140/cut.jpg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316136932/124x70/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316136932/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316136932/372x210/cut.jpg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/17253577-c40f-47bd-a823-b45753da0429.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/554b2086-f42d-4c14-8948-f2838bc8ff54.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/162d00e0-032b-4874-8fc2-f656d1a54b96.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/f3331c47-7b41-4ac1-9942-0ebbae91087f.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286442/MasterWiredWeb.m3u8"
}
]
},
{
"type": "video",
"id": "5356785",
"date": "2020-03-11T20:00:00-0400",
"title": "Kubalik's blistering one-timer",
"blurb": "SJS@CHI: Kubalik goes top shelf off Dach's slick feed",
"description": "Kirby Dach drops a pass to Dominik Kubalik, who hammers a one-timer top shelf over Aaron Dell's glove for a 6-2 lead in the 3rd period",
"duration": "00:47",
"authFlow": false,
"mediaPlaybackId": "5356785",
"mediaState": "MEDIA_ARCHIVE",
"keywords": [
{
"type": "shareable",
"value": "Y",
"displayName": "Y"
},
{
"type": "embeddable",
"value": "Y",
"displayName": "Y"
},
{
"type": "content",
"value": "highlight",
"displayName": "highlight"
},
{
"type": "content",
"value": "realTimeHighlight",
"displayName": "Real-Time Highlight"
},
{
"type": "statsEventId",
"value": "669",
"displayName": "669"
},
{
"type": "language",
"value": "en",
"displayName": "English"
},
{
"type": "teamId",
"value": "16",
"displayName": "16"
}
],
"image": {
"title": "",
"altText": "",
"cuts": {
"1136x640": {
"aspectRatio": "16:9",
"width": 1136,
"height": 640,
"src": "https://nhl.bamcontent.com/images/photos/316138532/1136x640/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/1136x640/cut.jpg"
},
"1024x576": {
"aspectRatio": "16:9",
"width": 1024,
"height": 576,
"src": "https://nhl.bamcontent.com/images/photos/316138532/1024x576/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/1024x576/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/1024x576/cut.jpg"
},
"960x540": {
"aspectRatio": "16:9",
"width": 960,
"height": 540,
"src": "https://nhl.bamcontent.com/images/photos/316138532/960x540/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/960x540/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/960x540/cut.jpg"
},
"768x432": {
"aspectRatio": "16:9",
"width": 768,
"height": 432,
"src": "https://nhl.bamcontent.com/images/photos/316138532/768x432/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/768x432/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/768x432/cut.jpg"
},
"640x360": {
"aspectRatio": "16:9",
"width": 640,
"height": 360,
"src": "https://nhl.bamcontent.com/images/photos/316138532/640x360/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/640x360/cut.jpg"
},
"568x320": {
"aspectRatio": "16:9",
"width": 568,
"height": 320,
"src": "https://nhl.bamcontent.com/images/photos/316138532/568x320/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/1136x640/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/568x320/cut.jpg"
},
"372x210": {
"aspectRatio": "16:9",
"width": 372,
"height": 210,
"src": "https://nhl.bamcontent.com/images/photos/316138532/372x210/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/372x210/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/372x210/cut.jpg"
},
"320x180": {
"aspectRatio": "16:9",
"width": 320,
"height": 180,
"src": "https://nhl.bamcontent.com/images/photos/316138532/320x180/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/640x360/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/960x540/cut.jpg"
},
"248x140": {
"aspectRatio": "16:9",
"width": 248,
"height": 140,
"src": "https://nhl.bamcontent.com/images/photos/316138532/248x140/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/248x140/cut.jpg"
},
"124x70": {
"aspectRatio": "16:9",
"width": 124,
"height": 70,
"src": "https://nhl.bamcontent.com/images/photos/316138532/124x70/cut.jpg",
"at2x": "https://nhl.bamcontent.com/images/photos/316138532/248x140/cut.jpg",
"at3x": "https://nhl.bamcontent.com/images/photos/316138532/372x210/cut.jpg"
}
}
},
"playbacks": [
{
"name": "FLASH_192K_320X180",
"width": "320",
"height": "180",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/cb1417c3-bd68-4647-ae78-e182698c5faf.mp4"
},
{
"name": "FLASH_450K_384x216",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/05d66888-d551-4479-a935-a9e5fce9a61d.mp4"
},
{
"name": "FLASH_1200K_640X360",
"width": "640",
"height": "360",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/44539768-0eb8-4e75-a2c8-cf1d0e9ade4c.mp4"
},
{
"name": "FLASH_1800K_896x504",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish/559be6f4-69bc-4393-8265-386a94c44187.mp4"
},
{
"name": "HTTP_CLOUD_MOBILE",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterMobile.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterTablet.m3u8"
},
{
"name": "HTTP_CLOUD_TABLET_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterTablet60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED",
"width": "null",
"height": "null",
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterWired.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_60",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterWired60.m3u8"
},
{
"name": "HTTP_CLOUD_WIRED_WEB",
"width": null,
"height": null,
"url": "https://hlslive-wsczoominwestus.med.nhl.com/publish-hls/5286786/MasterWiredWeb.m3u8"
}
]
}
]
}
}
}
''';
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
---              
layout: post
title: Open Source Comes to Princeton
---

![](/img/open-source-comes-to-princeton/image00.jpg)

On November 24, Open Source at Princeton helped run an Open Source Comes to Campus event with OpenHatch. (Warning: the word “open” will occur very often in this post.) [OpenHatch](http://openhatch.org/about/) is a [non-profit](http://openhatch.org/about/) dedicated to matching prospective free software contributors with communities, tools, and education. They provide online tools for new contributors and organize and support outreach events. Open Source Comes to Campus is a one-day workshop to teach the tools and culture of open source development and to help students make contributions to real projects. Groups at [21 schools](http://campus.openhatch.org/#pastevents) have run this event, including 10 women-in-CS organizations.

We were super excited to run this event, and it seems that people were as excited to attend—we received 80 sign-ups, of which about 40 people showed up. Here’s how it went.

## The schedule

The workshop was held on a Sunday from 10 am to 5 pm. You can see the schedule [here](https://openhatch.org/wiki/Princeton_schedule). Sumana Harihareswara, our wonderful speaker from the Wikimedia Foundation and Hacker School, delivered the introduction to open source communications tools.

People seemed to really enjoy the activities First, OpenHatch found two cute bugs, accessible to beginners and documented in issue trackers. They were [“No December”](http://bit.ly/no-december) (that is, in a certain version of Android, the month December disappeared) and [“can’t print on Tuesdays.”](http://bit.ly/cant-print) Pairs of people looked at the bugs and tried to explain the causes to each other. I won’t spoil why they were happening—take a look at the handout [here](https://github.com/openhatch/open-source-comes-to-campus/blob/master/curriculum/handouts/Communications_Handout.pdf)!  

![](/img/open-source-comes-to-princeton/image03.png)

Attendees also really enjoyed the git mini projects. They worked in groups of five with one mentor each. They cloned a sample repo that was the Princeton page with quirky changes added in, made changes on their machines, made pull requests, and got them merged in. After the merge, they could refresh the page to see their changes. It was rewarding because of the instant and visual feedback. Here’s a [sample page](https://princeton-2.github.io/%20) and here are the [pull requests](https://github.com/princeton-2/princeton-2.github.io/pulls?direction=desc&page=1&sort=created&state=closed).

## Contributions

The contributions workshop was designed to be the capstone of the workshop, where attendees would finally have the chance to make their own changes. In reality, there were mixed responses. Some attendees left early, whereas some attendees got really excited about their bugs and stayed for an hour after the workshop ended. 

![](/img/open-source-comes-to-princeton/image02.png)

OpenHatch put together a great [First Tasks](https://openhatch.org/wiki/First_Tasks) page that listed welcoming bite-size issues for beginners to fix, including projects like Dreamwidth, WelcomeBot, the Open Science Collaboration Blog, and OpenHatch itself. We also had mentors familiar with projects like OpenStates, Debian, and MediaWiki. 

The attendees made six pull requests total, of which three were successfully merged (yay!), two not completed by the students, and one fixed by the maintainer. Most contributions went to OpenHatch itself and OpenStates. Unfortunately, Dreamwidth, WCWeekly, and Open Science Collaboration blog didn’t get contributions, possibly because the maintainers weren’t present at the video call.

One sample pull request: Scott, a student here, worked on OpenStates. He found that a legislator had unsightly Javascript on her page, and [diagnosed the cause](https://code.google.com/p/openstates/issues/detail?id=833&groupby=priority&colspec=ID%20Status%20Milestone%20Component%20State%20Owner%20Summary) in the source code, which was that House representatives’ pages were missing the closing `</div>` tag. A maintainer for the project emailed the source website, and the error was fixed.

You can find details of the other pull requests [here](https://docs.google.com/a/princeton.edu/document/d/1r8h-Ju4GUvKcBymsK7gSK2CeJG-1mEeBHTG_d-AQu80/edit).

## Attendee statistics

We were excited about the fact that the people who signed up (and showed up) were about 30% women! (Compare this to the [estimated 2%](http://adainitiative.org/2011/12/the-founder-gap-why-we-need-more-women-in-open-source/) of women in the wider open-source community.) I hope our emphasis on reaching out to Princeton Women in CS and making the event beginner-friendly played a part in this. 

In response to the question “Please briefly describe your involvement in open source,” most people had never contributed before, but many had used Firefox, Wordpress, Eclipse, Ubuntu, and various other flavors of Linux. One great anonymous response: “My brother forced me to install Ubuntu and use gcc to code, but I never really did much with it.” Many people mentioned that they were particularly interested in contributing to Linux, Firefox, and Chromium.

The majority of people used Macs, more than half were already comfortable using the command line, and freshmen and sophomores made up about 70% of the registrants.

![](/img/open-source-comes-to-princeton/image01.png)

##Future directions

Some things we learned:

* People really liked the more structured projects, like diagnosing bugs and practicing making pull requests. Some attendees struggled with the more-unstructured contributions workshop. We would encourage mentors to take a more active role in guiding students.
* Alternatively, maybe find projects with more bite-size issues to address. Maybe add features instead of fixing bugs? Writing [HTTPS Everywhere rulesets](https://www.eff.org/https-everywhere/rulesets) could be well-structured and rewarding.
* Some attendees wanted the lectures to be more interactive.
* We should have encouraged people to follow the Hacker School [social rules](https://www.hackerschool.com/manual#sub-sec-social-rules) for a more welcoming environment.
* The workshop was rather long, and we forgot to ask most people to fill out the exit survey.
* Experienced CS students who attended the workshop weren’t annoyed by the review of the basics. In fact, one of them came up to us and said that he was very glad to see that we were going over git and version control, because a welcoming environment for beginners signaled that it would be welcoming for everyone else.

We’ve been continuing our work at Open Source at Princeton. Right now we’re running a long-term initiative with ThoughtWorks, a software consultancy, for students to contribute to [OpenMRS](http://openmrs.org/), an open-source electronic medical records platform. You can find our documentation and progress [here](http://openmrs.org/). 

We’ll end with this encouraging exit survey response from an attendee:

> “The skills you're introducing people to... no, the world you're introducing people to—it is so valuable for everybody that this world is nourished. And there is no better way to build the community around it than to pair people off with mentors who can give one-on-one attention to these future open source contributors.”

![](/img/open-source-comes-to-princeton/image05.png)

## Thanks!

It took a lot of time and effort to make this happen, and we’d like to thank the following people and organizations.

Members of OpenHatch: Shauna Gordon-McKeon and Asheesh Laroia.

Members of Open Source at Princeton: Lisha Ruan, Katherine Ye, Valerie Morin, Dorothy Chen, Evelyn Ding, Colleen Carroll, Diana Liao, and Annie Chu.

Mentors: Asheesh Laroia (OpenHatch), David Prager Branner (Hacker School), Omar Rizwan (Hacker School), Katerina Barone-Adesi (Hacker School), Jeremy Baron (MediaWiki, OpenHatch), Sumana Harihareswara (Wikimedia Foundation, Hacker School), Alex Clare (eBay, Hacker School), Alec Story (Google), and Paul Tagliamonte (Sunlight Foundation, Debian). 

(There was one mentor for every five students!)

Organizations: Jane Street, GitHub, and Google sponsored us, and Princeton Women in CS helped us a lot with logistics.

This workshop was inspired by the OpenHatch [workshop](http://openhatch.org/blog/2014/teaching-open-source-at-columbia-university/) held at Columbia University.
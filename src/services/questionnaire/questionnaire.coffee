

sureyMap =
    flat: { name: '平和质', page: 1 }
    deficiency: { name: '气虚质', page: 2 }
    Yang: { name: '阳虚质', page: 3 }
    Yin: { name: '阴虚质', page: 4 }
    phlegmy: { name: '气郁质', page: 5 }
    syndrome: { name: '痰湿质', page: 6 }
    blood: { name: '血瘀质', page: 7 }
    qiDepression: { name: '湿热质', page: 8 }
    specialTalents: { name: '特禀质', page: 9 }

module.exports.questionnaireCalculate = (questitionInfo) ->
    new Promise (resolve, reject) ->
        addQuestition = {}
        console.log (questitionInfo)
        for key, questition of questitionInfo
            addQuestition[key] =
                count: questition.length
                value: questition.reduce (pre, curr) ->
                    return parseInt(pre) + parseInt(curr)
        scoreQuestition = {}
        for key, questition of addQuestition
            console.log (questition.value - questition.count) , (questition.count * 4)
            scoreQuestition[key] = parseInt(((questition.value - questition.count) / (questition.count * 4)) * 100)

        resultSureQuestition = []
        resultPreferQuestition = []
        resultLowQualityQuestition = []
        console.log scoreQuestition
        for key, questition of scoreQuestition
            if key != 'flat'
                if questition >= 40
                    resultPreferQuestition.push name: key, value: questition
                else if questition >= 30 and questition <= 39
                    resultSureQuestition.push name: key, value: questition
                else
                    resultLowQualityQuestition.push name: key, value: questition
        result = {}
        if resultLowQualityQuestition.length == 8
            result.survey = sureyMap.flat.name
            result.page = sureyMap.flat.page
        else
            console.log resultPreferQuestition
            resultPreferQuestition.sort (a, b) ->
                return 1 if a.value > b.value
            survey = sureyMap[resultPreferQuestition.shift().name]
            result.survey = survey.name
            result.page = survey.page
            result.prefer = ""
            console.log result, resultSureQuestition, resultPreferQuestition, resultLowQualityQuestition

            for sureQuestition in resultSureQuestition
                result.prefer += sureyMap[sureQuestition.name].name + '、'
            for preferQuestition in resultPreferQuestition
                result.prefer += sureyMap[preferQuestition.name].name + '、'
            if result.prefer
                console.log result.prefer
                result.prefer = result.prefer.substr(0, result.prefer.length - 1)
                result.prefer += "。"
        result.scoreQuestition = scoreQuestition
        console.log resultSureQuestition
        resolve result

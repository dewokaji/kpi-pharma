SELECT
    `a`.`lineId` AS `lineId`,
    `a`.`compId` AS `compId`,
    `a`.`lineName` AS `lineName`,
    SUM(`a`.`tYear`) AS `tYear`,
    SUM(`a`.`mJan`) AS `mJan`,
    SUM(`a`.`mFeb`) AS `mFeb`,
    SUM(`a`.`mMar`) AS `mMar`,
    SUM(`a`.`mApr`) AS `mApr`,
    SUM(`a`.`mMei`) AS `mMei`,
    SUM(`a`.`mJun`) AS `mJun`,
    SUM(`a`.`mJul`) AS `mJul`,
    SUM(`a`.`mAug`) AS `mAug`,
    SUM(`a`.`mSep`) AS `mSep`,
    SUM(`a`.`mOct`) AS `mOct`,
    SUM(`a`.`mNov`) AS `mNov`,
    SUM(`a`.`mDec`) AS `mDec`
FROM
    (
    SELECT
        `a`.`lineId` AS `lineId`,
        `a`.`compId` AS `compId`,
        `a`.`lineName` AS `lineName`,
        `b`.`tResult` / `b`.`tCapacity` AS `tYear`,
        `b`.`tResult` / `b`.`tCapacity` * 100 AS `mJan`,
        0 AS `mFeb`,
        0 AS `mMar`,
        0 AS `mApr`,
        0 AS `mMei`,
        0 AS `mJun`,
        0 AS `mJul`,
        0 AS `mAug`,
        0 AS `mSep`,
        0 AS `mOct`,
        0 AS `mNov`,
        0 AS `mDec`
    FROM
        (
            `fima`.`mline` `a`
        LEFT JOIN `fima`.`tresultutil` `b`
        ON
            (
                `a`.`lineId` = `b`.`lineId` AND `b`.`tMonth` = 1
            )
        )
    UNION ALL
SELECT
    `a`.`lineId` AS `lineId`,
    `a`.`compId` AS `compId`,
    `a`.`lineName` AS `lineName`,
    `b`.`tResult` / `b`.`tCapacity` AS `tYear`,
    0 AS `mJan`,
    `b`.`tResult` / `b`.`tCapacity` * 100 AS `mFeb`,
    0 AS `mMar`,
    0 AS `mApr`,
    0 AS `mMei`,
    0 AS `mJun`,
    0 AS `mJul`,
    0 AS `mAug`,
    0 AS `mSep`,
    0 AS `mOct`,
    0 AS `mNov`,
    0 AS `mDec`
FROM
    (
        `fima`.`mline` `a`
    LEFT JOIN `fima`.`tresultutil` `b`
    ON
        (
            `a`.`lineId` = `b`.`lineId` AND `b`.`tMonth` = 2
        )
    )
UNION ALL
SELECT
    `a`.`lineId` AS `lineId`,
    `a`.`compId` AS `compId`,
    `a`.`lineName` AS `lineName`,
    `b`.`tResult` / `b`.`tCapacity` AS `tYear`,
    0 AS `mJan`,
    0 AS `mFeb`,
    `b`.`tResult` / `b`.`tCapacity` * 100 AS `mMar`,
    0 AS `mApr`,
    0 AS `mMei`,
    0 AS `mJun`,
    0 AS `mJul`,
    0 AS `mAug`,
    0 AS `mSep`,
    0 AS `mOct`,
    0 AS `mNov`,
    0 AS `mDec`
FROM
    (
        `fima`.`mline` `a`
    LEFT JOIN `fima`.`tresultutil` `b`
    ON
        (
            `a`.`lineId` = `b`.`lineId` AND `b`.`tMonth` = 3
        )
    )
UNION ALL
SELECT
    `a`.`lineId` AS `lineId`,
    `a`.`compId` AS `compId`,
    `a`.`lineName` AS `lineName`,
    `b`.`tResult` / `b`.`tCapacity` AS `tYear`,
    0 AS `mJan`,
    0 AS `mFeb`,
    0 AS `mMar`,
    `b`.`tResult` / `b`.`tCapacity` * 100 AS `mApr`,
    0 AS `mMei`,
    0 AS `mJun`,
    0 AS `mJul`,
    0 AS `mAug`,
    0 AS `mSep`,
    0 AS `mOct`,
    0 AS `mNov`,
    0 AS `mDec`
FROM
    (
        `fima`.`mline` `a`
    LEFT JOIN `fima`.`tresultutil` `b`
    ON
        (
            `a`.`lineId` = `b`.`lineId` AND `b`.`tMonth` = 4
        )
    )
UNION ALL
SELECT
    `a`.`lineId` AS `lineId`,
    `a`.`compId` AS `compId`,
    `a`.`lineName` AS `lineName`,
    `b`.`tResult` / `b`.`tCapacity` AS `tYear`,
    0 AS `mJan`,
    0 AS `mFeb`,
    0 AS `mMar`,
    0 AS `mApr`,
    `b`.`tResult` / `b`.`tCapacity` * 100 AS `mMei`,
    0 AS `mJun`,
    0 AS `mJul`,
    0 AS `mAug`,
    0 AS `mSep`,
    0 AS `mOct`,
    0 AS `mNov`,
    0 AS `mDec`
FROM
    (
        `fima`.`mline` `a`
    LEFT JOIN `fima`.`tresultutil` `b`
    ON
        (
            `a`.`lineId` = `b`.`lineId` AND `b`.`tMonth` = 5
        )
    )
UNION ALL
SELECT
    `a`.`lineId` AS `lineId`,
    `a`.`compId` AS `compId`,
    `a`.`lineName` AS `lineName`,
    `b`.`tResult` / `b`.`tCapacity` AS `tYear`,
    0 AS `mJan`,
    0 AS `mFeb`,
    0 AS `mMar`,
    0 AS `mApr`,
    0 AS `mMei`,
    `b`.`tResult` / `b`.`tCapacity` * 100 AS `mJun`,
    0 AS `mJul`,
    0 AS `mAug`,
    0 AS `mSep`,
    0 AS `mOct`,
    0 AS `mNov`,
    0 AS `mDec`
FROM
    (
        `fima`.`mline` `a`
    LEFT JOIN `fima`.`tresultutil` `b`
    ON
        (
            `a`.`lineId` = `b`.`lineId` AND `b`.`tMonth` = 6
        )
    )
UNION ALL
SELECT
    `a`.`lineId` AS `lineId`,
    `a`.`compId` AS `compId`,
    `a`.`lineName` AS `lineName`,
    `b`.`tResult` / `b`.`tCapacity` AS `tYear`,
    0 AS `mJan`,
    0 AS `mFeb`,
    0 AS `mMar`,
    0 AS `mApr`,
    0 AS `mMei`,
    0 AS `mJun`,
    `b`.`tResult` / `b`.`tCapacity` * 100 AS `mJul`,
    0 AS `mAug`,
    0 AS `mSep`,
    0 AS `mOct`,
    0 AS `mNov`,
    0 AS `mDec`
FROM
    (
        `fima`.`mline` `a`
    LEFT JOIN `fima`.`tresultutil` `b`
    ON
        (
            `a`.`lineId` = `b`.`lineId` AND `b`.`tMonth` = 7
        )
    )
UNION ALL
SELECT
    `a`.`lineId` AS `lineId`,
    `a`.`compId` AS `compId`,
    `a`.`lineName` AS `lineName`,
    `b`.`tResult` / `b`.`tCapacity` AS `tYear`,
    0 AS `mJan`,
    0 AS `mFeb`,
    0 AS `mMar`,
    0 AS `mApr`,
    0 AS `mMei`,
    0 AS `mJun`,
    0 AS `mJul`,
    `b`.`tResult` / `b`.`tCapacity` * 100 AS `mAug`,
    0 AS `mSep`,
    0 AS `mOct`,
    0 AS `mNov`,
    0 AS `mDec`
FROM
    (
        `fima`.`mline` `a`
    LEFT JOIN `fima`.`tresultutil` `b`
    ON
        (
            `a`.`lineId` = `b`.`lineId` AND `b`.`tMonth` = 8
        )
    )
UNION ALL
SELECT
    `a`.`lineId` AS `lineId`,
    `a`.`compId` AS `compId`,
    `a`.`lineName` AS `lineName`,
    `b`.`tResult` / `b`.`tCapacity` AS `tYear`,
    0 AS `mJan`,
    0 AS `mFeb`,
    0 AS `mMar`,
    0 AS `mApr`,
    0 AS `mMei`,
    0 AS `mJun`,
    0 AS `mJul`,
    0 AS `mAug`,
    `b`.`tResult` / `b`.`tCapacity` * 100 AS `mSep`,
    0 AS `mOct`,
    0 AS `mNov`,
    0 AS `mDec`
FROM
    (
        `fima`.`mline` `a`
    LEFT JOIN `fima`.`tresultutil` `b`
    ON
        (
            `a`.`lineId` = `b`.`lineId` AND `b`.`tMonth` = 9
        )
    )
UNION ALL
SELECT
    `a`.`lineId` AS `lineId`,
    `a`.`compId` AS `compId`,
    `a`.`lineName` AS `lineName`,
    `b`.`tResult` / `b`.`tCapacity` AS `tYear`,
    0 AS `mJan`,
    0 AS `mFeb`,
    0 AS `mMar`,
    0 AS `mApr`,
    0 AS `mMei`,
    0 AS `mJun`,
    0 AS `mJul`,
    0 AS `mAug`,
    0 AS `mSep`,
    `b`.`tResult` / `b`.`tCapacity` * 100 AS `mOct`,
    0 AS `mNov`,
    0 AS `mDec`
FROM
    (
        `fima`.`mline` `a`
    LEFT JOIN `fima`.`tresultutil` `b`
    ON
        (
            `a`.`lineId` = `b`.`lineId` AND `b`.`tMonth` = 10
        )
    )
UNION ALL
SELECT
    `a`.`lineId` AS `lineId`,
    `a`.`compId` AS `compId`,
    `a`.`lineName` AS `lineName`,
    `b`.`tResult` / `b`.`tCapacity` AS `tYear`,
    0 AS `mJan`,
    0 AS `mFeb`,
    0 AS `mMar`,
    0 AS `mApr`,
    0 AS `mMei`,
    0 AS `mJun`,
    0 AS `mJul`,
    0 AS `mAug`,
    0 AS `mSep`,
    0 AS `mOct`,
    `b`.`tResult` / `b`.`tCapacity` * 100 AS `mNov`,
    0 AS `mDec`
FROM
    (
        `fima`.`mline` `a`
    LEFT JOIN `fima`.`tresultutil` `b`
    ON
        (
            `a`.`lineId` = `b`.`lineId` AND `b`.`tMonth` = 11
        )
    )
UNION ALL
SELECT
    `a`.`lineId` AS `lineId`,
    `a`.`compId` AS `compId`,
    `a`.`lineName` AS `lineName`,
    `b`.`tResult` / `b`.`tCapacity` AS `tYear`,
    0 AS `mJan`,
    0 AS `mFeb`,
    0 AS `mMar`,
    0 AS `mApr`,
    0 AS `mMei`,
    0 AS `mJun`,
    0 AS `mJul`,
    0 AS `mAug`,
    0 AS `mSep`,
    0 AS `mOct`,
    0 AS `mNov`,
    `b`.`tResult` / `b`.`tCapacity` * 100 AS `mDec`
FROM
    (
        `fima`.`mline` `a`
    LEFT JOIN `fima`.`tresultutil` `b`
    ON
        (
            `a`.`lineId` = `b`.`lineId` AND `b`.`tMonth` = 12
        )
    )
) `a`
WHERE
    `a`.`tYear` IS NOT NULL
GROUP BY
    `a`.`lineId`,
    `a`.`tYear`